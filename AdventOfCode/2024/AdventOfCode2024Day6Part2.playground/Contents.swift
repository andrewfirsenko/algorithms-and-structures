import Foundation

// MARK: - Input

func loadFile(name: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: name, withExtension: nil) else { return nil }
    return try? String(contentsOf: fileUrl, encoding: .utf8)
}

// MARK: - Main

func main() {
    guard let input = loadFile(name: "Input") else {
        fatalError("Couldn`t load the file")
    }
    
    var x: Int = 0
    var y: Int = 0
    var direction: Direction = .up
    
    var map: [[Point]] = input
        .split(separator: "\n")
        .enumerated()
        .map { i, line in
            line.enumerated().map { j, ch in
                if ch == "^" {
                    x = j
                    y = i
                }
                return Point(value: ch)
            }
        }
    let width: Int = map[0].count
    let height: Int = map.count
    
    var answer: Int = 0
    
    while let next = nextPoint(point: (x, y), direction: direction, width: width, height: height) {
        map[y][x].directions.insert(direction)
        if map[next.y][next.x].value == "#" {
            direction = nextDirection(for: direction)
            continue
        }
        
        // Тут можем двигаться дальше
        var checkDirection = nextDirection(for: direction)
        var checkX = x
        var checkY = y
        let printBlockPoint = nextPoint(point: (x, y), direction: direction, width: width, height: height)
        while let check = nextPoint(point: (checkX, checkY), direction: checkDirection, width: width, height: height),
              map[check.y][check.x].value != "#" {
            if map[check.y][check.x].directions.contains(checkDirection) {
                answer += 1
                break
            }
            
            checkX = check.x
            checkY = check.y
        }
        
        y = next.y
        x = next.x
    }
    
    print("answer:", answer)
}

enum Direction {
    case up
    case down
    case left
    case right
}

final class Point {
    let value: Character
    var directions: Set<Direction>
    
    init(value: Character) {
        self.value = value
        self.directions = Set()
    }
}

func nextPoint(point: (x: Int, y: Int), direction: Direction, width: Int, height: Int) -> (x: Int, y: Int)? {
    let x: Int
    let y: Int
    switch direction {
    case .up:
        x = point.x
        y = point.y - 1
    case .down:
        x = point.x
        y = point.y + 1
    case .left:
        x = point.x - 1
        y = point.y
    case .right:
        x = point.x + 1
        y = point.y
    }
    if x < 0 || x >= width || y < 0 || y >= height {
        return nil
    } else {
        return (x, y)
    }
}

func nextDirection(for direction: Direction) -> Direction {
    switch direction {
    case .up: return .right
    case .down: return .left
    case .left: return .up
    case .right: return .down
    }
}

main()
