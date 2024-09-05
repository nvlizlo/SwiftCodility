//: Playground - noun: a place where people can play

import UIKit

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counter = Array(repeating: 0, count: N)
    var maxValue = 0
    var g = 0

    for i in A {
        if i <= N {
            if counter[i - 1] < g {
                counter[i - 1] = g
            }
            counter[i - 1] += 1
            maxValue = max(maxValue, counter[i - 1])
        } else {
            g = maxValue
        }
    }

    for i in 0..<counter.count {
        if counter[i] < g {
            counter[i] = g
        }
    }

    return counter
}

var array = [3, 4, 4, 6, 1, 4, 4]
var ones = [6,6,6,6,6]
var single = [2]
solution(5, &array)
