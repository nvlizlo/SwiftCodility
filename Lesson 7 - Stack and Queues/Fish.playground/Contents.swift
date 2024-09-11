import UIKit

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    var stack = [(size: Int, direction: Int)]()

outer:
    for i in 0..<A.count {
        let currentFish = (size: A[i], direction: B[i])

        guard !stack.isEmpty, currentFish.direction == 0, stack.last?.direction == 1 else {
            stack.append(currentFish)
            continue
        }

        while stack.last?.direction == 1 {
            if stack.last!.size > currentFish.size {
                continue outer
            } else {
                stack.popLast()
            }
        }
        stack.append(currentFish)
    }
    return stack.count
}

var A = [4, 3, 2, 1, 5]
var B = [0, 1, 0, 0, 0]
solution(&A, &B)

var A1 = [6, 5, 4, 3, 2, 1]
var B1 = [1, 0, 0, 0, 0, 0]
solution(&A1, &B1)
