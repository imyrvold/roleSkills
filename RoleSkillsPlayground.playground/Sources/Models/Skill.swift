import Foundation

public struct Skill: Codable, Identifiable {
    public let id: String
    var name: String
}
extension Skill: Equatable {
    public static func == (lhs: Skill, rhs: Skill) -> Bool {
        return lhs.id == rhs.id
    }
    
}
