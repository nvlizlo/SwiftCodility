//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    Int(ceil(Double(Y - X) / Double(D)))
}

solution(20, 85, 30)
