import SwiftUI

public struct RoleRow: View {
    @Binding var role: Role
    public var body: some View {
        HStack {
            Text(role.name)
        }
    }
}

