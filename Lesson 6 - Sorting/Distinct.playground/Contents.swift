// Codility task - https://app.codility.com/programmers/lessons/6-sorting/distinct/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78966510/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard !A.isEmpty else { return 0 }

    A.sort()
    var result = 1

    for i in 1..<A.count {
        if A[i] != A[i - 1] {
            result += 1
        }
    }
    return result
}

var a = [2, 1, 1, 2, 3, 1]
solution(&a)
