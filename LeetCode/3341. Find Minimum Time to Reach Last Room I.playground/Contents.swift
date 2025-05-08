import Foundation

struct Point {
    let i: Int
    let j: Int
}

public struct PriorityQueue<Element> {
    private var heap: [Element]
    private let areSorted: (Element, Element) -> Bool

    public init(sort: @escaping (Element, Element) -> Bool) {
        self.heap = []
        self.areSorted = sort
    }

    public var isEmpty: Bool { heap.isEmpty }
    public var count: Int { heap.count }

    public mutating func enqueue(_ element: Element) {
        heap.append(element)
        siftUp(from: heap.count - 1)
    }

    public mutating func dequeue() -> Element? {
        guard !heap.isEmpty else { return nil }
        if heap.count == 1 {
            return heap.removeFirst()
        } else {
            let first = heap[0]
            heap[0] = heap.removeLast()
            siftDown(from: 0)
            return first
        }
    }

    public func peek() -> Element? {
        heap.first
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2
        while child > 0 && areSorted(heap[child], heap[parent]) {
            heap.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2
            var candidate = parent

            if left < heap.count && areSorted(heap[left], heap[candidate]) {
                candidate = left
            }
            if right < heap.count && areSorted(heap[right], heap[candidate]) {
                candidate = right
            }
            if candidate == parent { return }
            heap.swapAt(parent, candidate)
            parent = candidate
        }
    }
}

class Solution {
    
    func minTimeToReach(_ moveTime: [[Int]]) -> Int {
        let n: Int = moveTime.count
        let m: Int = moveTime[0].count
        var minTime: [[Int]] = Array(repeating: Array(repeating: Int.max, count: m), count: n)
        var queue = PriorityQueue<Point> { lhs, rhs in
            return minTime[lhs.i][lhs.j] < minTime[rhs.i][rhs.j]
        }
        
        // BFS
        minTime[0][0] = 0
        queue.enqueue(Point(i: 0, j: 0))
        while !queue.isEmpty {
            let point = queue.dequeue()!
            neighbors(point: point, n: n, m: m).forEach { nPoint in
                let timeToNextPoint = max(
                    minTime[point.i][point.j] + 1,
                    moveTime[nPoint.i][nPoint.j] + 1
                )
                if timeToNextPoint < minTime[nPoint.i][nPoint.j] {
                    minTime[nPoint.i][nPoint.j] = timeToNextPoint
                    queue.enqueue(nPoint)
                }
            }
        }
        
        return minTime[n - 1][m - 1]
    }
    
    private func neighbors(point: Point, n: Int, m: Int) -> [Point] {
        var neighbors: [Point] = []
        if point.i > 0 { neighbors.append(Point(i: point.i - 1, j: point.j)) }
        if point.i < n - 1 { neighbors.append(Point(i: point.i + 1, j: point.j)) }
        if point.j > 0 { neighbors.append(Point(i: point.i, j: point.j - 1)) }
        if point.j < m - 1 { neighbors.append(Point(i: point.i, j: point.j + 1)) }
        return neighbors
    }
}

let solution = Solution()
solution.minTimeToReach([[0,4],[4,4]]) // 6
solution.minTimeToReach([[0,0,0],[0,0,0]]) // 3
solution.minTimeToReach([[15,58],[67,4]]) // 60
solution.minTimeToReach([[17,56],[97,80]]) // 81
solution.minTimeToReach([[56,93],[3,38]]) // 39
solution.minTimeToReach([[94,79,62,27,69,84],[6,32,11,82,42,30]]) // 72

