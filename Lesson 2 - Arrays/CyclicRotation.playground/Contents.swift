//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard (1...100).contains(A.count), (0...100).contains(K) else { return [] }

    var result = Array(repeating: 0, count: A.count)

    for i in 0..<A.count {
        let j = i + K
        result[j % A.count] = A[i]
    }
    return result
}

var array = [3, 8, 9, 7, 6]
var a = [1,2]
var b = [1]
var c = [Int]()
solution(&array, 3)
