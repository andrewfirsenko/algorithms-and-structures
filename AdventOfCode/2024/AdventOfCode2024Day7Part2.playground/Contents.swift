import Foundation

// MARK: - Input

func loadFile(name: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: name, withExtension: nil) else { return nil }
    return try? String(contentsOf: fileUrl, encoding: .utf8)
}

// MARK: - Main

func main() {
    guard let input = loadFile(name: "Input") else { fatalError("Couldn`t load the file") }
    
    var result: Decimal = 0
    input.split { $0.isNewline }
        .forEach { line in
            guard let splitIndex = line.firstIndex(of: ":"),
                  let target: Decimal = Decimal(string: String(line[line.startIndex..<splitIndex])) else {
                return
            }
            let numbers: [Decimal] = line[splitIndex..<line.endIndex]
                .split(separator: " ")
                .compactMap { Decimal(string: String($0)) }
            
            if dfs(i: 1, result: numbers[0], target: target, nums: numbers) {
                result += target
            }
        }
    
    print("answer:", result)
}

func dfs(i: Int, result: Decimal, target: Decimal, nums: [Decimal]) -> Bool {
    if result == target { return true }
    if i >= nums.count || result > target { return false }
    
    return dfs(i: i + 1, result: result + nums[i], target: target, nums: nums) ||
    dfs(i: i + 1, result: result * nums[i], target: target, nums: nums) ||
    dfs(i: i + 1, result: Decimal(string: "\(result)\(nums[i])")!, target: target, nums: nums)
}

main()

// 426214137279934 too much
