typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { (wires: (String, String, String)) in
  return (wires.1, wires.0, wires.2)
}

let rotate: ChangeClosure = { (wires: (String, String, String)) in
  return (wires.1, wires.2, wires.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  return { (key: [UInt8], wires: (String, String, String)) in
    var currentWires = wires
    for bit in key.reversed() {
      if bit == 0 {
        currentWires = flipper(currentWires)
      } else {
        currentWires = rotator(currentWires)
      }
    }
    return currentWires
  }
}