import SwiftUI

public struct RolesListView: View {
    @Binding var roles: [Role]
    @Binding var skills: [Skill]
    
    public var body: some View {
        List {
            ForEach(roles) { index in
                NavigationLink(destination: RoleDetailed(role: self.$roles[index], skills: self.$skills)) {
                    RoleRow(role: self.$roles[index])
                }
            }
        }.navigationBarTitle("Roles")
            .font(.body)
    }
    
    public init(roles: Binding<[Role]>, skills: Binding<[Skill]>) {
        self._roles = roles
        self._skills = skills
    }
}
