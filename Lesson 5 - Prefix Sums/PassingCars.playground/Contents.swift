//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var counter = 0
    var result = 0
    
    for i in 0..<A.count {
        if A[i] == 1 {
            result += counter
        } else {
            counter += 1
        }
        
        if result > 1_000_000_000 {
            return -1
        }
    }
    
    return result
}

public func solution2(_ A : inout [Int]) -> Int {
    var p = Array(repeating: 0, count: A.count + 1)
    var result = 0
    
    for i in 1..<A.count + 1 {
        p[i] = p[i - 1] + A[i - 1]
    }
    
    for i in 0..<A.count {
        if A[i] == 0 {
            result += p[p.count - 1] - p[i + 1]
        }
        
        if result > 1_000_000_000 {
            return -1
        }
    }
    
    return result
}

var array = [0, 1, 0, 1, 1]
solution2(&array)
