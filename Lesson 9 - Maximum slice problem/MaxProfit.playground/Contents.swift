// Codility task - https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_profit/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/79050506/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    guard var minPrice = A.first else { return 0 }
    var maxProfit = 0

    for i in 1..<A.count {
        let dif = A[i] - minPrice

        if dif <= 0 {
            minPrice = A[i]
        } else {
            maxProfit = max(maxProfit, dif)
        }
    }

    return maxProfit
}

var A = [23171, 21011, 21123, 21366, 21013, 21367]
solution(&A)
