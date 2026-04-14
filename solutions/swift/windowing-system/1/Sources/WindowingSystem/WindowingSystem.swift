struct Size {
    var width: Int = 80
    var height: Int = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

struct Position {
    var x: Int = 0
    var y: Int = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}

class Window {
    var title: String = "New Window"
    let screenSize: Size = Size(width: 800, height: 600)
    var size: Size = Size()
    var position: Position = Position()
    var contents: String? = nil

    init() {}

    init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
        self.title = title
        self.contents = contents
        self.size = size
        self.position = position
    }

    func resize(to: Size) {
        if to.width < 1 {
            size.width = 1
        } else if to.width > screenSize.width - position.x {
            size.width = screenSize.width - position.x
        } else {
            size.width = to.width
        }
        if to.height < 1 {
            size.height = 1
        } else if to.height > screenSize.height - position.y {
            size.height = screenSize.height - position.y
        } else {
            size.height = to.height
        }
    }

    func move(to: Position) {
        if to.x < 0 {
            position.x = 0
        } else if to.x > screenSize.width - size.width {
            position.x = screenSize.width - size.width
        } else {
            position.x = to.x
        }
        if to.y < 0 {
            position.y = 0
        } else if to.y > screenSize.height - size.height {
            position.y = screenSize.height - size.height
        } else {
            position.y = to.y
        }
    }

    func update(title: String) {
        self.title = title
    }

    func update(text: String?) {
        self.contents = text
    }

    func display() -> String {
        let contentLine = contents ?? "[This window intentionally left blank]"
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contentLine)\n"
    }
}
