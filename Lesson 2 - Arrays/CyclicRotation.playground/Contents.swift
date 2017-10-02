//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if !((1...100).contains(A.count) && (0...100).contains(K)) {
        return []
    }
    
    var array = Array(repeating: A[0], count: A.count)
    
    for i in 0..<A.count {
        let j = i + K
        array[j % A.count] = A[i]
        
    }
    
    return array
}

var array = [3, 8, 9, 7, 6]
var a = [1,2]
var b = [1]
var c = [Int]()
solution(&c, 3)
