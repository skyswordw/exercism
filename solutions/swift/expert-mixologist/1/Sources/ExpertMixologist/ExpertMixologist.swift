func timeToPrepare(drinks: [String]) -> Double {
  var totalTime = 0.0
  for drink in drinks {
    switch drink {
    case "beer", "soda", "water":
      totalTime += 0.5
    case "shot":
      totalTime += 1.0
    case "mixed drink":
      totalTime += 1.5
    case "fancy drink":
      totalTime += 2.5
    case "frozen drink":
      totalTime += 3.0
    default:
      break
    }
  }
  return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var wedgesNeeded = needed
  var limesCopy = limes
  var count = 0
  while wedgesNeeded > 0 && !limesCopy.isEmpty {
    let lime = limesCopy.removeFirst()
    switch lime {
    case "small":
      wedgesNeeded -= 6
    case "medium":
      wedgesNeeded -= 8
    case "large":
      wedgesNeeded -= 10
    default:
      break
    }
    count += 1
  }
  return count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var leftOrders = remainingOrders
  var minutes = Double(minutesLeft)
  repeat {
    minutes -= timeToPrepare(drinks: leftOrders.removeFirst())
  } while minutes > 0 && !leftOrders.isEmpty
  return leftOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?,
  soda: (first: String, last: String, total: Int)?
) {
  var beer: (first: String, last: String, total: Int)? = nil
  var soda: (first: String, last: String, total: Int)? = nil

  for (drink, time) in orders {
    switch drink {
    case "beer":
      beer = (first: beer?.first ?? time, last: time, total: (beer?.total ?? 0) + 1)
    case "soda":
      soda = (first: soda?.first ?? time, last: time, total: (soda?.total ?? 0) + 1)
    default:
      continue
    }
  }

  return (beer: beer, soda: soda)
}
