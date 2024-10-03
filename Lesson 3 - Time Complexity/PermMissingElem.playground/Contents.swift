// Codility task - https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954349/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.append(0)
    var arraySum = 0
    var fullSum = 0

    for i in 0..<A.count {
        arraySum += A[i]
        fullSum += (i + 1)
    }

    return fullSum - arraySum
}

var array = [2, 3, 1, 5]

solution(&array)
