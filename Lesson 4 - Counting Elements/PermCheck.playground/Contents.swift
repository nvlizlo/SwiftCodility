// Codility task - https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954477/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var a = Array(repeating: 0, count: A.count)

    for i in 0..<A.count {
        if A[i] < a.count + 1 {
            a[A[i] - 1] += 1
        } else {
            return 0
        }
    }
    
    for i in 0..<a.count {
        if a[i] != 1 {
            return 0
        }
    }
    
    return 1
}

var array = [4, 1, 3, 2]
solution(&array)
