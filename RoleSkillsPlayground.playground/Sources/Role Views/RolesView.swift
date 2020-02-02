import Foundation
import SwiftUI

public struct RolesView: View {
    @ObservedObject var store: RoleStore
    @ObservedObject var skillStore: SkillStore
    
    public init(store: RoleStore, skillStore: SkillStore) {
        self.store = store
        self.skillStore = skillStore
    }

    public var body: some View {
        RolesListView(roles: $store.roles, skills: $skillStore.skills)
            .navigationBarTitle(Text("Roles"))
    }
}
