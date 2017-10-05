//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    return (Y - X) / D + ((Y - X) % D > 0 ? 1 : 0)
}

solution(20, 85, 30)