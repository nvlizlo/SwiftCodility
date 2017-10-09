//: Playground - noun: a place where people can play

import UIKit

func solution(_ A: inout [Int]) -> Int {
    var pairs = [Int: Bool]()
    
    for element in A {
        if pairs[element] == false {
            pairs[element] = true
        } else {
            pairs[element] = false
        }
    }
    
    for pair in pairs {
        if pair.value == false {
            return pair.key
        }
    }
    return 0
}

var array = [9,9,3,3,6]
solution(&array)
