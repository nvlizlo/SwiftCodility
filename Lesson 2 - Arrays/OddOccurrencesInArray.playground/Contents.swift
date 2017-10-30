//: Playground - noun: a place where people can play

import UIKit

func solution(_ A: inout [Int]) -> Int {
    var returnedValue = 0
    
    for i in A {
        returnedValue ^= i
        print(returnedValue)
    }
    
    return returnedValue
}

var array = [4,1,4]
solution(&array)
