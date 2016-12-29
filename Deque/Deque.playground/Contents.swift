//Simple Deque Implementation

import UIKit

struct Deque<T> {
    
    private var q = [T]()
    
    mutating func inject(newItem : T) { // add at the end
        q.append(newItem)
    }
    
    mutating func push(newItem : T) { // add at the front
        q.insert(newItem, at: 0)
    }
    
    mutating func eject() -> T? { // remove from end
        if q.isEmpty {
            return nil
        } else {
            return q.removeLast()
        }
    }
    
    mutating func pop() -> T? { // remove from front
        if q.isEmpty {
            return nil
        } else {
            return q.removeFirst()
        }
    }
    
    func front() -> T? {
        return q.first
    }
    
    func back() -> T? {
        return q.last
    }
    
    var isEmpty : Bool {
        return q.isEmpty
    }
    
    var size : Int {
        return q.count
    }
}
