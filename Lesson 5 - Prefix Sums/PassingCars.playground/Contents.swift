// Codility task - https://app.codility.com/programmers/lessons/5-prefix_sums/passing_cars/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78956239/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var counter = 0
    var result = 0

    for i in 0..<A.count {
        if A[i] == 1 {
            result += counter
        } else {
            counter += 1
        }

        guard result <= 1_000_000_000 else { return -1 }
    }

    return result
}

public func solution2(_ A : inout [Int]) -> Int {
    var p = Array(repeating: 0, count: A.count + 1)
    var result = 0

    for i in 1..<A.count + 1 {
        p[i] = p[i - 1] + A[i - 1]
    }

    for i in 0..<A.count {
        if A[i] == 0 {
            result += p[p.count - 1] - p[i + 1]
        }

        guard result <= 1_000_000_000 else { return -1 }
    }

    return result
}

var array = [0, 1, 0, 1, 1]
solution2(&array)
