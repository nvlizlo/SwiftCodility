//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var occurs = Array(repeating: 0, count: A.count + 1)
    
    for i in A {
        if i > 0 && i < occurs.count {
            occurs[i] += 1
        }
    }
    
    for i in 1..<occurs.count {
        if occurs[i] == 0 {
            return i
        }
    }
    
    return occurs.reduce(0, +) == A.count ? A.count + 1 : 1
}

var array = [1, 2, 3]
var a = [1, 3, 6, 4, 1, 2]
var b = [-1, -3]
var c = [5]

solution(&a)
solution(&b)
solution(&c)
solution(&array)


