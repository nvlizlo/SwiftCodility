import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard let leader = leader(&A) else { return 0 }

    var p: [Int] = Array(repeating: 0, count: A.count)
    p[0] = A[0] == leader ? 1 : 0

    for i in 1..<A.count {
        p[i] =  p[i - 1] + (A[i] == leader ? 1 : 0)
    }

    var result = 0

    for i in 0..<p.count {
        let left = p[i]
        let right = p[p.count - 1] - left
        let currentIndex = i + 1

        guard left > currentIndex / 2, right > (p.count - currentIndex) / 2 else { continue }

        result += 1
    }

    return result
}

func leader(_ A : inout [Int]) -> Int? {
    var candidate: Int?
    var size = 0

    for element in A {
        if size == 0 {
            candidate = element
            size += 1
        } else if candidate == element {
            size += 1
        } else {
            size -= 1
        }
    }
    var count = 0

    for element in A {
        if element == candidate {
            count += 1
        }
        if count > A.count / 2 {
            return element
        }
    }
    return candidate
}

var A = [4, 3, 4, 4, 4, 2]
var A1 = [1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 1, 1]
var A2 = Array(repeating: 999999, count: 100000)

leader(&A)
solution(&A)
