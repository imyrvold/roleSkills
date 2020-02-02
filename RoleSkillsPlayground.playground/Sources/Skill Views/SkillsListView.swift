import SwiftUI

public struct SkillsListView: View {
    @ObservedObject var skillStore: SkillStore
    public var body: some View {
        List {
            ForEach(skillStore.skills) { skill in
                NavigationLink(destination: SkillDetailed(skill: skill)) {
                    SkillRow(skill: skill)
                }
            }
            .onDelete(perform: deleteSkill)
        }
        .navigationBarTitle("Skills")
        .font(.body)
}
    
    public init(skillStore: SkillStore) {
        self.skillStore = skillStore
    }

    func deleteSkill(offsets: IndexSet) {
        var skillsToDelete: [Skill] = []
        for index in offsets {
            skillsToDelete.append(self.skillStore.skills[index])
        }
        self.skillStore.delete(skills: skillsToDelete)
    }

}
