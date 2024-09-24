import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var result = 0
    var stack = [Int]()
    
    for element in A {
        if stack.isEmpty || stack.last == element {
            stack.append(element)
        } else if stack.last != element {
            stack.popLast()
        }
    }

    guard let dominator = stack.last else { return -1 }
    var count = 0

    for i in 0..<A.count {
        if dominator == A[i] {
            count += 1
        }
        if count > A.count / 2 {
            return i
        }
    }
    return -1
}

var A = [3, 4, 3, 2, 3, -1, 3, 3]
solution(&A)
