func newScoreBoard() -> [String: Int] {
  return [String: Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  if scores[name] != nil {
    scores[name] = 0
  }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  if let current = scores[name] {
    scores[name] = current + delta
  }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  func byName(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    lhs.0 < rhs.0
  }
  return scores.sorted(by: byName)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  func byScore(_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    lhs.1 > rhs.1
  }
  return scores.sorted(by: byScore)
}
