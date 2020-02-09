import Foundation

public struct Skill: Codable, Hashable, Identifiable {
    public let id: String
    var name: String
}
extension Skill: Equatable {
    public static func == (lhs: Skill, rhs: Skill) -> Bool {
        return lhs.id == rhs.id
    }
    
}
