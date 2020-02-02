import Foundation

public struct MyRoles {
    public static func roles() -> [Role] {
        try! JSONDecoder().decode([Role].self, from: Data(rolesJson.utf8))
    }
}

extension MyRoles {
    static func role() -> Role {
        MyRoles.roles()[1]
    }
}

extension MyRoles {
    public static let rolesJson = """
[
  {
    "id": "5c766787710db30dc8bfb1f0",
    "name": "Systemadministrator",
    "skills": [
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
        }
    ]
  },
  {
    "id": "5c766787710db30dc8bfb1f1",
    "name": "Ansatt",
      "skills": [
          {
              "id": "5c766788710db30dc8bfb1f4",
              "name": "creative"
          },
          {
              "id": "5c766788710db30dc8bfb1f6",
              "name": "handy"
          }
      ]
  },
{
    "id": "5c97a5417a762700295222c4",
    "name": "Klovn",
      "skills": [
          {
              "id": "5c766788710db30dc8bfb1f5",
              "name": "entertaining"
          }
      ]
  }
]
"""
}

