//: Playground - noun: a place where people can play

import UIKit

func solution(_ A: inout [Int]) -> Int {
    var result = -1
    
    var i = 0
    while i < A.count {
        
        for j in (i+1)..<A.count {
            
            if A[i] == A[j] {
                A.remove(at: j)
                A.remove(at: i)
                i -= 1
                break
            }
            
        }
        i+=1
    }
    
    result = A[0]
    print(A)
    return result
}

var array = [9,9,3,3,6]
solution(&array)