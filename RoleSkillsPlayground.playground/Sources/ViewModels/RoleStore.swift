import Foundation
import Combine

public final class RoleStore: ObservableObject {
    @Published public var roles: [Role] = []
    
    public init(roles: [Role]) {
        self.roles = roles
    }
}
