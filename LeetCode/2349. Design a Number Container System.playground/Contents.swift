import Foundation

// MARK: - Indexed Heap

struct IndexedHeap<T: Hashable & Comparable> {
    private var elements: [T] = []
    private var indices: [T: Int] = [:] // Хранит индексы элементов

    var isEmpty: Bool { elements.isEmpty }
    var peek: T? { elements.first }

    mutating func insert(_ value: T) {
        elements.append(value)
        indices[value] = elements.count - 1
        siftUp(from: elements.count - 1)
    }

    mutating func removeMin() -> T? {
        return remove(at: 0)
    }

    mutating func remove(_ value: T) -> T? {
        guard let index = indices[value] else { return nil }
        return remove(at: index)
    }

    private mutating func remove(at index: Int) -> T? {
        guard index < elements.count else { return nil }

        let removedValue = elements[index]
        let lastValue = elements.removeLast()
        indices[removedValue] = nil

        if index < elements.count {
            elements[index] = lastValue
            indices[lastValue] = index
            siftDown(from: index)
            siftUp(from: index)
        }

        return removedValue
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        let value = elements[child]
        var parent = (child - 1) / 2

        while child > 0 && elements[child] < elements[parent] {
            elements.swapAt(child, parent)
            indices[elements[child]] = child
            indices[elements[parent]] = parent
            child = parent
            parent = (child - 1) / 2
        }
        elements[child] = value
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        let value = elements[parent]

        while true {
            let left = 2 * parent + 1
            let right = left + 1
            var candidate = parent

            if left < elements.count && elements[left] < elements[candidate] {
                candidate = left
            }
            if right < elements.count && elements[right] < elements[candidate] {
                candidate = right
            }
            if candidate == parent { break }

            elements.swapAt(parent, candidate)
            indices[elements[parent]] = parent
            indices[elements[candidate]] = candidate
            parent = candidate
        }
        elements[parent] = value
    }
}



// MARK: - Solution

class NumberContainers {
    
    private var indexesByNumber: [Int: IndexedHeap<Int>] = [:] // Number : Indexes
    private var numberByIndex: [Int: Int] = [:] // Index : Number

    init() {
        
    }
    
    func change(_ index: Int, _ number: Int) {
        if let oldNumber = numberByIndex[index] {
            indexesByNumber[oldNumber]?.remove(index)
        }
        
        numberByIndex[index] = number
        indexesByNumber[number, default: IndexedHeap<Int>()].insert(index)
    }
    
    func find(_ number: Int) -> Int {
        guard let indexes = indexesByNumber[number],
              let minIndex = indexes.peek else {
            return -1
        }
        return minIndex
    }
}

// MARK: - Test

let nc = NumberContainers()
nc.find(10) // There is no index that is filled with number 10. Therefore, we return -1.
nc.change(2, 10) // Your container at index 2 will be filled with number 10.
nc.change(1, 10) // Your container at index 1 will be filled with number 10.
nc.change(3, 10) // Your container at index 3 will be filled with number 10.
nc.change(5, 10) // Your container at index 5 will be filled with number 10.
nc.find(10) // Number 10 is at the indices 1, 2, 3, and 5. Since the smallest index that is filled with 10 is 1, we return 1.
nc.change(1, 20) // Your container at index 1 will be filled with number 20. Note that index 1 was filled with 10 and then replaced with 20.
nc.find(10) // Number 10 is at the indices 2, 3, and 5. The smallest index that is filled with 10 is 2. Therefore, we return 2.
