func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(name: String, amount: Int)] {
  var result = items
  for i in 0..<result.count {
    if result[i].name == toy {
      result[i].amount = amount
    }
  }
  return result
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newItems: [(name: String, amount: Int, category: String)] = []
  for item in items {
    newItems.append((name: item.name, amount: item.amount, category: category))
  }
  return newItems
}
