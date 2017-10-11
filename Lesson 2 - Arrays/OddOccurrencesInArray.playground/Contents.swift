//: Playground - noun: a place where people can play

import UIKit

func solution(_ A: inout [Int]) -> Int {
    var pairs = [Int: Bool]()
    
    for element in A {
        if pairs[element] == true {
            pairs.removeValue(forKey: element)
        } else {
            pairs[element] = true
        }
    }
    
    let returnedValue = pairs.keys.first ?? 0
    return returnedValue
}

var array = [4,1,4]
solution(&array)
