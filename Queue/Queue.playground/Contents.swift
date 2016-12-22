//Simple Implementation of Queue Data Structure

import UIKit

struct Queue<T> {
    
    private var q = [T]()
    
    mutating func enqueue( newItem : T) {
        q.append(newItem)
    }
    
    func front() -> T? {
        return q.first
    }
    
    mutating func dequeue() -> T? {
        if q.isEmpty {
            return nil
        } else {
            return q.removeFirst()
        }
    }
    
    var isEmpty : Bool {
        return q.isEmpty
    }
    
    var size : Int {
        return q.count
    }
}