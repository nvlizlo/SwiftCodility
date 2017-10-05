//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    let count = A.count
    let sum = count * (count + 1) / 2
    
    var arraySum = 0
    
    for i in 0..<A.count {
        arraySum += A[i]
    }
    
    return sum == arraySum ? 1 : 0
}

var array = [4, 1, 2, 3]
solution(&array)
