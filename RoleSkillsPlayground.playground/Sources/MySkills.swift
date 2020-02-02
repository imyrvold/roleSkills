import Foundation

public struct MySkills {
    public static func skills() -> [Skill] {
        try! JSONDecoder().decode([Skill].self, from: Data(skillsJson.utf8))
    }
}

extension MySkills {
    public static func skill() -> Skill {
        MySkills.skills()[0]
    }
}

extension MySkills {
    public static let skillsJson = """
[
  {
    "id": "5c766788710db30dc8bfb1f3",
    "name": "awesome"
  },
  {
    "id": "5c766788710db30dc8bfb1f4",
    "name": "creative"
  },
  {
    "id": "5c766788710db30dc8bfb1f6",
    "name": "handy"
  },
  {
    "id": "5c766788710db30dc8bfb1f5",
    "name": "entertaining"
  },
  {
    "id": "5c766788710db30dc8bfb1f9",
    "name": "nothing"
  }
]
"""
}

