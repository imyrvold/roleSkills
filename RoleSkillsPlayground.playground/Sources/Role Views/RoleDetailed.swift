import SwiftUI

public struct RoleDetailed: View {
    @Binding var role: Role
    @State var showAddSkill = false
    @Binding public var skills: [Skill]

    public var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text(role.name)
                        .font(.largeTitle)
                    Spacer()
                }
                Text("id: " + role.id)
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                List {
                    ForEach(role.skills) { skill in
                        SkillRow(skill: skill)
                    }
                .onDelete(perform: deleteSkill)
                }
            }.font(.headline).padding(10)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showAddSkill.toggle()
                }) {
                    Text("Add skill")
                }.sheet(isPresented: self.$showAddSkill, content: {
                    AddSkillView(skills: self.$skills, role: self.$role)
                })
            )
    }
    
    private func deleteSkill(offsets: IndexSet) {
        self.role.skills.remove(atOffsets: offsets)
    }
}

