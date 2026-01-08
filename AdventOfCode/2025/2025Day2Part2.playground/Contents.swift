import Foundation

// MARK: - Input
func loadFile(name: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: name, withExtension: nil) else { return nil }
    return try? String(contentsOf: fileUrl, encoding: .utf8)
}

// MARK: - Main
func main() {
    guard let input = loadFile(name: "input") else { fatalError("Couldn`t load the file") }

    var answer: Int128 = 0
    let pairs = input
        .replacingOccurrences(of: "\n", with: "")
        .split(separator: ",")
    
    for pair in pairs {
        let numbers = pair.split(separator: "-")
        guard let fromNumber: Int128 = Int128(numbers[0]),
              let toNumber: Int128 = Int128(numbers[1]) else {
            continue
        }
        
        var tickNumber: Int128
        if fromNumber.lenght % 2 == 0 {
            let left: Int128 = fromNumber / Int128.powDecimal(n: fromNumber.lenght / 2)
            let right: Int128 = fromNumber % Int128.powDecimal(n: fromNumber.lenght / 2)
            if right > left {
                tickNumber = left + 1
            } else {
                tickNumber = left
            }
        } else {
            tickNumber = Int128.powDecimal(n: fromNumber.lenght / 2)
        }
        
        var buildedNumber = buildNumber(for: tickNumber)
        while buildedNumber <= toNumber {
            answer += buildedNumber
            
            tickNumber += 1
            buildedNumber = buildNumber(for: tickNumber)
        }
    }

    print("answer:", answer)
}

main()

func buildNumber(for number: Int128) -> Int128 {
    return number * Int128.powDecimal(n: number.lenght) + number
}

extension Int128 {
    var lenght: Int {
        var value: Int = 0
        var tempNumber = self
        while tempNumber > 0 {
            tempNumber /= 10
            value += 1
        }
        return value
    }
    
    static func powDecimal(n: Int) -> Int128 {
        var value: Int128 = 1
        for _ in 0..<n {
            value *= 10
        }
        return value
    }
}
