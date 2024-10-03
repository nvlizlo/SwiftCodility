// Codility task - https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954431/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var occurs: [Int] = Array(repeating: -1, count: X + 1)

    for i in 0..<A.count {
        if occurs[A[i]] == -1 {
            occurs[A[i]] = i
        }
    }

    occurs.removeFirst()

    if (occurs.filter { $0 == -1 }).count == 0 {
        return occurs.max(by: <) ?? 0
    }

    return -1
}

var a = [1, 3, 1, 4, 2, 3, 5, 4]

solution(5, &a)
