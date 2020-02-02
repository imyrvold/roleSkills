//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct ModelsView: View {
    @ObservedObject var roleStore = RoleStore(roles: MyRoles.roles())
    @ObservedObject var skillStore = SkillStore(skills: MySkills.skills())
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                NavigationLink(destination: RolesView(store: roleStore, skillStore: skillStore)) {
                    Text("Roles")
                }
                NavigationLink(destination: SkillsListView(skillStore: skillStore)) {
                    Text("Skills")
                }
            }.font(.title).padding(20)
        }
    }
}

PlaygroundPage.current.setLiveView(ModelsView())

//: [Next](@next)
