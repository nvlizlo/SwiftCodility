import UIKit

public func solution(_ H : inout [Int]) -> Int {
    var stack = [Int]()
    var result = 0

outer:
    for element in H {
        func addElementAndIncrementResult() {
            stack.append(element)
            result += 1
        }

        if stack.isEmpty || element > stack.last! {
            addElementAndIncrementResult()
            continue
        }

        guard element != stack.last! else {
            continue
        }

        if element < stack.last! {
            while !stack.isEmpty {
                if stack.last! == element {
                    continue outer
                }
                if stack.last! > element {
                    stack.popLast()
                    continue
                }
                if stack.last! < element {
                    addElementAndIncrementResult()
                    continue outer
                }
            }

            stack.popLast()
            addElementAndIncrementResult()
            continue
        }
    }
    return result
}

var H = [8, 8, 5, 7, 9, 8, 7, 4, 8]
solution(&H) // 7
var H1 = [5, 6, 8, 6, 5, 8, 5, 5]
solution(&H1) // 4
var H2 = [10, 8, 7, 6, 8, 10, 7, 5, 10, 8, 7, 6]
solution(&H2) // 12
var H3 = [3, 4, 3, 5, 2, 2, 2, 7, 7, 7, 7]
solution(&H3) // 5
var H4 = [1, 3, 2, 4, 2, 1, 3, 2, 4]
solution(&H4) // 7
var H5 = [5, 5, 5, 10, 10, 7, 7, 6, 8, 8, 5, 5, 5]
solution(&H5) // 5
