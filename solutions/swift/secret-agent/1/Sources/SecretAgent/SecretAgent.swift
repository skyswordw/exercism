func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func protectedSecret(_ attempt: String) -> String {
    if attempt == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }
  return protectedSecret
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let first = f(room)
  let second = f(first)
  let third = f(second)
  return (first, second, third)
}
