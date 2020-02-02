import Foundation
import Combine

public final class SkillStore: ObservableObject {
    @Published public var skills: [Skill] = []
    private var cancellables: Set<AnyCancellable> = []

    public init(skills: [Skill]) {
        self.skills = skills
    }

    public func delete(skills: [Skill]) {
        self.cancellables = []

        for skill in skills {
            if let index = self.skills.firstIndex(where: { $0 == skill }) {
                self.skills.remove(at: index)
            }
        }
    }

}
 
