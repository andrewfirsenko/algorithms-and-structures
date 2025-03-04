import Foundation
import DataStructures

class MyStack {
    
    private let q1: Queue<Int> = Queue()
    private let q2: Queue<Int> = Queue()

    init() {
        
    }
    
    func push(_ x: Int) {
        if !q1.isEmpty {
            q1.enqueue(x)
        } else {
            q2.enqueue(x)
        }
    }
    
    func pop() -> Int {
        if q1.isEmpty {
            for _ in 0..<(q2.size - 1) {
                q1.enqueue(q2.dequeue()!)
            }
            return q2.dequeue()!
        } else {
            for _ in 0..<(q1.size - 1) {
                q2.enqueue(q1.dequeue()!)
            }
            return q1.dequeue()!
        }
    }
    
    func top() -> Int {
        if q1.isEmpty {
            for _ in 0..<(q2.size - 1) {
                q1.enqueue(q2.dequeue()!)
            }
            let value = q2.dequeue()!
            q1.enqueue(value)
            return value
        } else {
            for _ in 0..<(q1.size - 1) {
                q2.enqueue(q1.dequeue()!)
            }
            let value = q1.dequeue()!
            q2.enqueue(value)
            return value
        }
    }
    
    func empty() -> Bool {
        return q1.isEmpty && q2.isEmpty
    }
}

let myStack = MyStack()
myStack.push(1)
myStack.push(2)
myStack.top() // return 2
myStack.pop() // return 2
myStack.empty() // return False
