// Codility task - https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_slice_sum/
// If you like the solution, please vote on others on stackoverflow - https://stackoverflow.com/users/3542688/nazariy-vlizlo
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var maxEnding = -1_000_000
    var maxSlice = -1_000_000

    for element in A {
        maxEnding = max(element, maxEnding + element)
        maxSlice = max(maxSlice, maxEnding)
    }

    return maxSlice
}

var A = [3, 2, -6, 4, 0]
var A1 = [-3, -2, -1]
var A2 = [-10, -9]
solution(&A)
