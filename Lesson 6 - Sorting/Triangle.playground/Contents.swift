//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    if A.count > 2 {
        A.sort()
        for i in 2..<A.count {
            if A[i-2]+A[i-1] > A[i], A[i-1]+A[i] > A[i-2], A[i]+A[i-2] > A[i-1] {
                return 1
            }
        }
    }
    return 0
}

var a = [10, 2, 5, 1, 8, 20]
solution(&a)
