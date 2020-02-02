import SwiftUI
import Combine

struct AddSkillView: View {
    @Binding var skills: [Skill]
    @Binding var role: Role

    var body: some View {
        VStack {
            Text("Add skill")
                .font(.largeTitle)
            SkillsListRows(skills: self.skills)
        }
    }
}
