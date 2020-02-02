import SwiftUI

public struct SkillRow: View {
    var skill: Skill
    public var body: some View {
        HStack {
            Text(skill.name)
        }
    }
}
