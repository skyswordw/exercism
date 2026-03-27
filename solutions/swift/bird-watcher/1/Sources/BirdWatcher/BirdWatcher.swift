func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for bird in birdsPerDay {
    total += bird
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var total = 0
  for bird in birdsPerDay[weekNumber * 7 - 7..<weekNumber * 7] {
    total += bird
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var newBirdsPerDay = birdsPerDay
  for i in stride(from: 0, to: newBirdsPerDay.count, by: 2) {
    newBirdsPerDay[i] += 1
  }
  return newBirdsPerDay
}
