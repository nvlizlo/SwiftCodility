// Codility task - https://app.codility.com/programmers/lessons/7-stacks_and_queues/nesting/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/79049899/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ S : inout String) -> Int {
    guard !S.isEmpty else { return 1 }

    var stack = [Character]()

    for character in S {
        if stack.isEmpty && character == ")" { 
            return 0
        }

        guard !stack.isEmpty, (stack.last! == "(" && character == ")") else {
            stack.append(character)
            continue
        }
        stack.popLast()
    }

    return stack.isEmpty ? 1 : 0
}

var S = "(()(())())"
solution(&S)
