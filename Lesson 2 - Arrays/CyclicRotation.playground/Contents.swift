// Codility task - https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954008/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard (1...100).contains(A.count), (0...100).contains(K) else { return [] }

    var result = Array(repeating: 0, count: A.count)

    for i in 0..<A.count {
        let j = i + K
        result[j % A.count] = A[i]
    }
    return result
}

var array = [3, 8, 9, 7, 6]
var a = [1,2]
var b = [1]
var c = [Int]()
solution(&array, 3)
