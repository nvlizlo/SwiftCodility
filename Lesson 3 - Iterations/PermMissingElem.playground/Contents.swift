//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.append(0)
    var sumA = 0
    var sumF = 0
    for i in 0..<A.count {
        sumA += A[i]
        sumF += (i + 1)
    }
    
    return sumF - sumA
}

var array = [2, 3, 1, 5]

solution(&array)