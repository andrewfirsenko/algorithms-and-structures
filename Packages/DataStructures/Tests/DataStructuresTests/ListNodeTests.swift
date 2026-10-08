import Testing
@testable import DataStructures

struct ListNodeTests {
    @Test
    func initFromArray() {
        let list = ListNode([2, 4, 3])
        #expect(list?.val == 2)
        #expect(list?.next?.val == 4)
        #expect(list?.next?.next?.val == 3)
        #expect(list?.next?.next?.next == nil)
    }
    
    @Test
    func initFromSingleElement() {
        let list = ListNode([1])
        #expect(list?.val == 1)
        #expect(list?.next == nil)
    }
    
    @Test
    func initFromEmptyArrayIsNil() {
        #expect(ListNode([]) == nil)
    }
    
    @Test
    func arrayRoundTrip() {
        #expect(ListNode([9, 9, 9, 0, 1]).array == [9, 9, 9, 0, 1])
    }
    
    @Test
    func nilListArrayIsEmpty() {
        let list: ListNode? = nil
        #expect(list.array == [])
    }
}
