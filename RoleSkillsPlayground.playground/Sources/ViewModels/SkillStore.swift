import Foundation
import Combine

public final class SkillStore: ObservableObject {
    @Published public var skills: [Skill] = [] {
        didSet {
            let oldSkills = Set(oldValue)
            let uniqueSet = oldSkills.subtracting(self.skills)
            if let deletedSkill = uniqueSet.first {
                deletedPublisher.send(deletedSkill)
            }
        }
    }
    private var cancellables: Set<AnyCancellable> = []
    let deletedPublisher = PassthroughSubject<Skill, Never>()

    public init(skills: [Skill]) {
        self.skills = skills
    }

    public func delete(skills: [Skill]) {
        for skill in skills {
            if let index = self.skills.firstIndex(where: { $0 == skill }) {
                self.skills.remove(at: index)
            }
        }
    }
}
 
