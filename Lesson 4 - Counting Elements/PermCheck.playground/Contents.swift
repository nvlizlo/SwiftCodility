//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var a = Array(repeating: 0, count: A.count)

    for i in 0..<A.count {
        if A[i] < a.count + 1 {
            a[A[i] - 1] += 1
        } else {
            return 0
        }
    }
    
    for i in 0..<a.count {
        if a[i] != 1 {
            return 0
        }
    }
    
    return 1
}

var array = [4, 1, 3, 2]
solution(&array)
