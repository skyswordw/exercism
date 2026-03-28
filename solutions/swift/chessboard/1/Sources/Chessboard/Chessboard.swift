// TODO: define the 'ranks' constant
let ranks: ClosedRange<Int> = 1...8
// TODO: define the 'files' constant
let files: ClosedRange<String> = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  return ranks.contains(rank) && files.contains(file)
}

func getRow(_ board: [String], rank: Int) -> [String] {
  return Array(board[rank * 8 - 8..<rank * 8])
}
