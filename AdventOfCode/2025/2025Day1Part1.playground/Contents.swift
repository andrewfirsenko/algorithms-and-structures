import Foundation

// MARK: - Input

func loadFile(name: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: name, withExtension: nil) else { return nil }
    return try? String(contentsOf: fileUrl, encoding: .utf8)
}

// MARK: - Main

func main() {
    guard let input = loadFile(name: "Input") else { fatalError("Couldn`t load the file") }

	let maxCount: Int = 100
	var point: Int = 50
	var password: Int = 0

    let lines = input.split { $0.isNewline }
    lines.forEach { line in
		guard let direction = line.first,
			  let number = Int(line.dropFirst()) else {
			return
		}

		if direction == "L" {
			point = point - (number % maxCount)
			if point < 0 {
				point = maxCount + point
			}
		}
		if direction == "R" {
			point = (point + number) % maxCount
		}

		if point == 0 {
			password += 1
		}
    }

    print("answer:", password)
}

main()

