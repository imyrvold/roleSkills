import Foundation
import Combine
import SwiftUI

public final class RoleStore: ObservableObject {
    @Published public var roles: [Role] = []
    @ObservedObject var skillStore: SkillStore
    private var cancellables: Set<AnyCancellable> = []

    public init(roles: [Role], skillStore: SkillStore) {
        self.roles = roles
        self.skillStore = skillStore
        self.skillStore.deletedPublisher.sink { skill in
            for roleIndex in self.roles.indices {
                let skills = self.roles[roleIndex].skills.filter { $0 != skill }
                self.roles[roleIndex].skills = skills
            }
        }
        .store(in: &cancellables)
    }
}
