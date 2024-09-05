//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    let sum = A.reduce(0, +)
    var leftSum = 0
    var rightSum = 0
    var minDifference = Int.max

    for i in 0..<A.count - 1 {
        leftSum += A[i]
        rightSum = sum - leftSum
        minDifference = min(minDifference, abs(rightSum - leftSum))
    }

    return minDifference
}

var a = [3, 1]
solution(&a)
