// Codility task - https://app.codility.com/programmers/lessons/4-counting_elements/max_counters/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954530/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counter = Array(repeating: 0, count: N)
    var maxValue = 0
    var g = 0

    for i in A {
        if i <= N {
            if counter[i - 1] < g {
                counter[i - 1] = g
            }
            counter[i - 1] += 1
            maxValue = max(maxValue, counter[i - 1])
        } else {
            g = maxValue
        }
    }

    for i in 0..<counter.count {
        if counter[i] < g {
            counter[i] = g
        }
    }

    return counter
}

var array = [3, 4, 4, 6, 1, 4, 4]
var ones = [6,6,6,6,6]
var single = [2]
solution(5, &array)
