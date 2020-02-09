//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

var skillStore = SkillStore(skills: MySkills.skills())
var roleStore = RoleStore(roles: MyRoles.roles(), skillStore: skillStore)

struct ModelsView: View {
    @ObservedObject var skillStore: SkillStore
    @ObservedObject var roleStore: RoleStore
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

PlaygroundPage.current.setLiveView(ModelsView(skillStore: skillStore, roleStore: roleStore))

//: [Next](@next)
