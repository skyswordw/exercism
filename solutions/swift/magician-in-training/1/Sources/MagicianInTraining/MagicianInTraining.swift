func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index < stack.count else { return stack }
  var newStack = stack
  newStack[index] = newCard
  return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.append(newCard)
  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard index < stack.count else { return stack }
  var newStack = stack
  newStack.remove(at: index)
  return newStack
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  guard index <= stack.count else { return stack }
  var newStack = stack
  newStack.insert(newCard, at: index)
  return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}
