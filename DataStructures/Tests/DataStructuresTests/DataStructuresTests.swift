import Testing
@testable import DataStructures

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let queue = MyCircularQueue(3)
    #expect(queue.enQueue(1) == true)
    #expect(queue.enQueue(2) == true)
    #expect(queue.enQueue(3) == true)
    #expect(queue.enQueue(4) == false)
    #expect(queue.Rear() == 3)
    #expect(queue.isFull() == true)
    #expect(queue.deQueue() == true)
    #expect(queue.enQueue(4) == true)
    #expect(queue.Rear() == 4)
}
