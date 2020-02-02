import SwiftUI

public struct SkillsListRows: View {
    var skills: [Skill]
    public var body: some View {
        List(skills) { skill in
            SkillRow(skill: skill)
        }.navigationBarTitle("Skills")
            .font(.body)
    }
    
    public init(skills: [Skill]) {
        self.skills = skills
    }

}

