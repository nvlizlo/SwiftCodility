//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    return B / K - A / K + (A % K == 0 ? 1 : 0)
}

solution(7, 12, 2)
