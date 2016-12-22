// Implements a generic Stack Data structure with all of its basic operations

import UIKit

class Stack<Item> {
    
    private var array = [Item]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func push(object : Item) {
        array.append(object)
    }
    
    func pop() -> Item? {
        return array.popLast()
    }
    
    func top() -> Item? {
        return array.last
    }
    
    func size() -> Int {
        return array.count
    }
    
}