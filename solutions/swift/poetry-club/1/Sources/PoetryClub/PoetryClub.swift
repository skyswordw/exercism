import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
  var password: [Character] = []
  for line in splitOnNewlines(phrase) {
    password.append(line.first ?? "_")
  }
  return String(password).uppercased()
}

func backDoorPassword(_ phrase: String) -> String {
  var password: [Character] = []
  for line in splitOnNewlines(phrase) {
    let trimmed = line.trimmingCharacters(in: .whitespaces)
    password.append(trimmed.last ?? "_")
  }
  return String(password).lowercased() + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
  var password: [Character] = []
  for (index, line) in splitOnNewlines(phrase).enumerated() {
    let idx = line.index(line.startIndex, offsetBy: index)
    password.append(line[idx])
  }
  return String(password).uppercased() + "!"
}
