//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.insert(0, at: 0)
    var a = Array(repeating: 0, count: A.count)
    a[0] = 1
    for i in 1..<A.count {
        if A[i] < a.count {
            a[A[i]] += 1
        } else {
            return 0
        }
    }
    
    for i in 1..<a.count {
        if a[i] != 1 {
            return 0
        }
    }
    
    return 1
}

var array = [4, 1, 3, 2]
solution(&array)
