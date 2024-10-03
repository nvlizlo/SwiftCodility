// Codility task - https://app.codility.com/programmers/lessons/4-counting_elements/missing_integer/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954590/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var occurs = Array(repeating: 0, count: A.count + 1)

    for i in A {
        if (1..<occurs.count).contains(i) {
            occurs[i] += 1
        }
    }

    for i in 1..<occurs.count {
        if occurs[i] == 0 {
            return i
        }
    }
    return A.count + 1
}

var array = [1, 2, 3]
var a = [1, 3, 6, 4, 1, 2]
var b = [-1, -3]
var c = [5]

solution(&a)
solution(&b)
solution(&c)
solution(&array)
