enum LogLevel: Int {
    case trace
    case debug
    case info = 4
    case warning
    case error
    case fatal
    case unknown = 42

    init(_ message: String) {
        guard message.hasPrefix("["),
            let closingBracket = message.firstIndex(of: "]") else {
                self = .unknown
                return
        }
        let start = message.index(after: message.startIndex)
        let level = String(message[start..<closingBracket])

        switch level {
            case "TRC": self = .trace
            case "DBG": self = .debug
            case "INF": self = .info
            case "WRN": self = .warning
            case "ERR": self = .error
            case "FTL": self = .fatal
            default: self = .unknown
        }
    }

    func shortFormat(message: String) -> String {
        return "\(self.rawValue):\(message)"
    }
}