import Foundation

public struct Role: Codable, Identifiable {
    public let id: String
    var name: String
    var skills: [Skill]
}
