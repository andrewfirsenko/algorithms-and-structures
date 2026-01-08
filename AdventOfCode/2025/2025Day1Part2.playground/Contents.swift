import Foundation

// MARK: - Input
func loadFile(name: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: name, withExtension: nil) else { return nil }
    return try? String(contentsOf: fileUrl, encoding: .utf8)
}

// MARK: - Main
func main() {
    guard let input = loadFile(name: "input") else { fatalError("Couldn`t load the file") }

	let maxCount: Int = 100
	var point: Int = 50
	var password: Int = 0

    let lines = input.split { $0.isNewline }
    lines.forEach { line in
		guard let direction = line.first,
			  var number = Int(line.dropFirst()) else {
			return
		}

        // full circle
        password += number / maxCount
        number = number % maxCount
        
		if direction == "L" {
            let toPoint = (point + maxCount - number) % maxCount
            if toPoint == 0 || (toPoint > point && point != 0) {
                password += 1
            }
            point = toPoint
		}
        
		if direction == "R" {
			let toPoint = (point + number) % maxCount
            if toPoint < point {
                password += 1
            }
            point = toPoint
		}
    }

    print("answer:", password)
}

main()

