//: Playground - noun: a place where people can play

import UIKit

func solution(_ n: inout Int) -> Int {
    var returned = 0
    
    if n > 0, n <= 2_147_483_647 {
        
        let b = String(n, radix: 2)
        var k = 0
        for c in b.characters {
            if c == "1" {
                returned = max(returned, k)
                k = 0
            } else if c == "0" {
                k += 1
            }
        }
    }
    
    return returned
}

var v = 1041
solution(&v)
