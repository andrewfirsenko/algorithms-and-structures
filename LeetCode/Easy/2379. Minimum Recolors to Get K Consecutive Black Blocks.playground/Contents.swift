import Foundation

class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        guard blocks.count >= k else { return 0 }
        
        var count: Int = 0
        for i in 0..<k {
            let index = blocks.index(blocks.startIndex, offsetBy: i)
            if blocks[index] == "B" {
                count += 1
            }
        }
        
        var maxBlackBlocks: Int = count
        for i in k..<blocks.count {
            if maxBlackBlocks == k { return 0 }
            
            let oldIndex = blocks.index(blocks.startIndex, offsetBy: i - k)
            let newIndex = blocks.index(blocks.startIndex, offsetBy: i)
            if blocks[oldIndex] == "B" {
                count -= 1
            }
            if blocks[newIndex] == "B" {
                count += 1
            }
            maxBlackBlocks = max(maxBlackBlocks, count)
        }
        
        return k - maxBlackBlocks
    }
}

let solution = Solution()
solution.minimumRecolors("WBBWWBBWBW", 7) // 3
solution.minimumRecolors("WBWBBBW", 2) // 0
