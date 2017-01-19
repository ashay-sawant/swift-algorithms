//: Simple Linked List Implementation

import UIKit

public class Node<T : Comparable> {
    private var data : T
    private var next : Node?
    
    public init(_ data : T) {
        self.data = data
        self.next = nil
    }
    
    func getValue() -> T {
        return data
    }
    
    func setValue(_ data : T) {
        self.data = data
    }
    
    func getNext() -> Node<T>? {
        return self.next
    }
    
    func setNext(_ node : Node<T>?) {
        self.next = node
    }
    
}

public class LinkedList<T : Comparable> {
    
    private var head : Node<T>?
    
    func append( _ item : T) {
        if var node = head {
            while node.getNext() != nil {
                node = node.getNext()!
            }
            node.setNext(Node(item))
        } else {
            head = Node(item)
        }
    }
    
    func prepend( _ item : T) {
        if self.isEmpty {
            head = Node(item)
        } else {
            let temp = Node(item)
            temp.setNext(head!)
            head = temp
        }
    }
    
    public var isEmpty : Bool {
        return head == nil
    }
    
    func insertAfter(_ data : T, newItem : T) -> Bool{
        if var node = head {
            if node.getValue() == data {
                // continue
            }
            else {
                while node.getNext() != nil {
                    if node.getValue() == data {
                        break
                    }
                    node = node.getNext()!
                }
            }
            let temp = Node(newItem)
            temp.setNext(node.getNext())
            node.setNext(temp)
            
        } else {
            head = Node(data)
        }
        return true
    }
    
    func insertBefore(_ data : T, newItem : T) -> Bool{
        if var node = head {
            if node.getValue() == data {
                let temp = Node(newItem)
                temp.setNext(node.getNext())
                node.setNext(temp)
                return true
            } else {
                while node.getNext() != nil {
                    if node.getNext()?.getValue() == data {
                        let temp = Node(newItem)
                        temp.setNext(node.getNext()!)
                        node.setNext(temp)
                        return true
                    }
                    node = node.getNext()!
                }
            }
        }
        return false
    }
    
    public var description : String{
        var description : String = ""
        if var node = head {
            description += "\(node.getValue())->"
            while node.getNext() != nil {
                node = node.getNext()!
                description += "\(node.getValue())->"
            }
        }
        return description
    }
    
}