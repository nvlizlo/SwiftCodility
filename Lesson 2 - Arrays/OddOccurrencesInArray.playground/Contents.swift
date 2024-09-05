//: Playground - noun: a place where people can play

import UIKit

func solution(_ A: inout [Int]) -> Int {
    A.reduce(0, ^)
}

var array = [4,1,4]
solution(&array)
