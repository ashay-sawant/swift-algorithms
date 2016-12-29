//Implementing All types of Search algorithms
//1. Linear Search
//2. Binary Search


import UIKit

func linerSearch<T: Equatable>(searchfor: T, array: [T]) -> Int?{
    for index in 0...array.count {
        if searchfor == array[index] {
            return index
        }
    }
    return nil
}

func binarySearch<T: Comparable>(searchFor : T, sortedArray: [T]) -> Int?{
    
    var start = 0
    var end  = sortedArray.count
    var mid = 0
    
    while (start < end) {
        mid = (start + end )/2
        if searchFor == sortedArray[mid] {
            return mid
        } else if searchFor > sortedArray[mid]  {
            start = mid + 1
        } else {    //if searchFor < sortedArray[mid]
            end = mid - 1
        }
    }
    return nil
}


