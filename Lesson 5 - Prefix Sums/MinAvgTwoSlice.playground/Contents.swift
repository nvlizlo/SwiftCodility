//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var minimumAvg = Double.greatestFiniteMagnitude
    var index = 0
    
    for i in 0..<A.count-1  {
        if Double(A[i] + A[i+1]) / 2.0 < minimumAvg {
            minimumAvg = Double(A[i] + A[i+1]) / 2.0
            index = i
        }
        
        
        if i < A.count-2, Double(A[i] + A[i+1] + A[i+2]) / 3.0 < minimumAvg {
            minimumAvg = Double(A[i] + A[i+1] + A[i+2]) / 3.0
            index = i
        }
    }
    
    return index
}

var array = [4, 2, 2, 5, 1, 5, 8]
solution(&array)
