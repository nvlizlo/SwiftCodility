//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.append(0)
    var arraySum = 0
    var fullSum = 0

    for i in 0..<A.count {
        arraySum += A[i]
        fullSum += (i + 1)
    }

    return fullSum - arraySum
}

var array = [2, 3, 1, 5]

solution(&array)
