//: Playground - noun: a place where people can play

import UIKit

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    let maxCounter = N + 1
    var counter = Array(repeating: 0, count: maxCounter)
    var maxValue = 0
    
    for i in A {
        if i <= N {
            counter[i] += 1
            print(counter)
            maxValue = max(maxValue, counter[i])
        } else {
            for i in 1..<counter.count {
                counter[i] = maxValue
            }
        }
    }
    
    counter.remove(at: 0)
    
    return counter
}

var array = [3, 4, 4, 6, 1, 4, 4]
var ones = [6,6,6,6,6]
var single = [2]
solution(1, &single)
