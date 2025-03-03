import Foundation

class MyQueue {
    
    private var pushStack: [Int] = []
    private var popStack: [Int] = []

    init() {}
    
    func push(_ x: Int) {
        pushStack.append(x)
    }
    
    func pop() -> Int {
        moveIfNeeded()
        return popStack.removeLast()
    }
    
    func peek() -> Int {
        moveIfNeeded()
        return popStack.last!
    }
    
    func empty() -> Bool {
        return pushStack.isEmpty && popStack.isEmpty
    }
    
    private func moveIfNeeded() {
        guard popStack.isEmpty else { return }
        while let last = pushStack.last {
            popStack.append(last)
            pushStack.removeLast()
        }
    }
}

let myQueue = MyQueue()
myQueue.push(1) // queue is: [1]
myQueue.push(2) // queue is: [1, 2] (leftmost is front of the queue)
myQueue.peek() // return 1
myQueue.pop() // return 1, queue is [2]
myQueue.empty() // return false
