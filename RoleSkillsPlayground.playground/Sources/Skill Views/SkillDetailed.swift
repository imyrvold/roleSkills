import SwiftUI

public struct SkillDetailed: View {
    var skill: Skill
    public var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(skill.name)
                    .font(.largeTitle)
                Spacer()
            }
            Text("id: " + skill.id)
                .font(.footnote)
                .foregroundColor(Color.gray)
            Spacer()
        }.font(.headline).padding(10)
    }
}
