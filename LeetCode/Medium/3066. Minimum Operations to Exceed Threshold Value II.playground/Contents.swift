import Foundation

struct MinHeap<T: Comparable> {
    private var heap: [T] = []

    var isEmpty: Bool {
        return heap.isEmpty
    }

    var count: Int {
        return heap.count
    }

    var min: T? {
        return heap.first
    }

    mutating func insert(_ value: T) {
        heap.append(value)
        siftUp(from: heap.count - 1)
    }

    mutating func extractMin() -> T? {
        guard !heap.isEmpty else { return nil }
        if heap.count == 1 {
            return heap.removeFirst()
        }
        let minValue = heap[0]
        heap[0] = heap.removeLast()
        siftDown(from: 0)
        return minValue
    }

    private mutating func siftUp(from index: Int) {
        var childIndex = index
        let childValue = heap[childIndex]
        var parentIndex = (childIndex - 1) / 2

        while childIndex > 0 && heap[parentIndex] > childValue {
            heap[childIndex] = heap[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
        heap[childIndex] = childValue
    }

    private mutating func siftDown(from index: Int) {
        var parentIndex = index
        let count = heap.count

        while true {
            let leftChildIndex = 2 * parentIndex + 1
            let rightChildIndex = 2 * parentIndex + 2
            var smallestIndex = parentIndex

            if leftChildIndex < count && heap[leftChildIndex] < heap[smallestIndex] {
                smallestIndex = leftChildIndex
            }
            if rightChildIndex < count && heap[rightChildIndex] < heap[smallestIndex] {
                smallestIndex = rightChildIndex
            }
            if smallestIndex == parentIndex {
                break
            }

            heap.swapAt(parentIndex, smallestIndex)
            parentIndex = smallestIndex
        }
    }
}

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var minHeap = MinHeap<Int>()
        nums.forEach {
            minHeap.insert($0)
        }
        
        var count: Int = 0
        while let peek = minHeap.min, peek < k {
            let x: Int = minHeap.extractMin()!
            let y: Int = minHeap.extractMin()!
            print("log: (\(minHeap.count))", x, y, x * 2 + y)
            minHeap.insert(x * 2 + y)
            count += 1
        }
        
        return count
    }
}

let solution = Solution()
solution.minOperations([2,11,10,1,3], 10) // 2
solution.minOperations([1,1,2,4,9], 20) // 4
solution.minOperations([85,93,100,90,40,7,62,90,68,88], 88) // 3
