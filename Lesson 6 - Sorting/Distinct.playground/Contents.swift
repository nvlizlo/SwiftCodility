//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    if A.isEmpty {
        return 0
    }
    A.sort()
    var result = 1
    for i in 1..<A.count {
        if A[i] != A[i-1] {
            result += 1
        }
    }
    return result
}

var a = [2, 1, 1, 2, 3, 1]
solution(&a)
