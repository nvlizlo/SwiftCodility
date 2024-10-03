// Codility task - https://app.codility.com/programmers/lessons/6-sorting/max_product_of_three/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78966839/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    A.sort()
    let count = A.count
    let max1 = A[count - 1] * A[count - 2] * A[count - 3]
    let max2 = A[count - 1] * A[0] * A[1]

    return max(max1, max2)
}

var a = [-3, 1, 2, -2, 5, 6]
solution(&a)
