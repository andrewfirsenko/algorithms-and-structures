// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class MinStack {
    
    private var stack: [(value: Int, min: Int)] = []

    public init() {}
    
    public func push(_ val: Int) {
        var newMin: Int = val
        if let last = stack.last {
            newMin = min(val, last.min)
        }
        
        stack.append((value: val, min: newMin))
    }
    
    public func pop() {
        stack.removeLast()
    }
    
    public func top() -> Int {
        return stack.last?.value ?? .zero
    }
    
    public func getMin() -> Int {
        return stack.last?.min ?? .zero
    }
}
