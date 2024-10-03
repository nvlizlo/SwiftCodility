// Codility task - https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954382/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    let sum = A.reduce(0, +)
    var leftSum = 0
    var rightSum = 0
    var minDifference = Int.max

    for i in 0..<A.count - 1 {
        leftSum += A[i]
        rightSum = sum - leftSum
        minDifference = min(minDifference, abs(rightSum - leftSum))
    }

    return minDifference
}

var a = [3, 1]
solution(&a)
