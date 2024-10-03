// Codility task - https://app.codility.com/programmers/lessons/6-sorting/triangle/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78966843/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 2 else { return 0 }
    A.sort()

    for i in 2..<A.count {
        if A[i - 2] + A[i - 1] > A[i] {
            return 1
        }
    }
    return 0
}

var a = [10, 2, 5, 1, 8, 20]
solution(&a)
