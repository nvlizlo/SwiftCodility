//: Playground - noun: a place where people can play

import UIKit

public func solution(_ N : Int) -> Int {
    guard N > 0, N <= 2_147_483_647 else { return 0 }

    var result = 0
    let binary = String(N, radix: 2)
    var k = 0

    for c in binary {
        if c == "1" {
            result = max(result, k)
            k = 0
        } else if c == "0" {
            k += 1
        }
    }
    return result
}

var v = 1041
solution(v)
