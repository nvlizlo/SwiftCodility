// Codility task - https://app.codility.com/programmers/lessons/7-stacks_and_queues/brackets/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78966917/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import Foundation

func canDestroy(c1: Character, c2: Character) -> Bool {
    c1 == "{" && c2 == "}" || c1 == "[" && c2 == "]" || c1 == "(" && c2 == ")"
}

public func solution(_ S : inout String) -> Int {
    guard !S.isEmpty else { return 1 }

    var characters = S.map { $0 as Character }

    var stack = [Character]()
    stack.append(characters.first!)

    for i in 1..<characters.count {
        guard !stack.isEmpty else {
            stack.append(characters[i])
            continue
        }

        let previousLastStackElement = stack.last!
        stack.append(characters[i])

        if canDestroy(c1: previousLastStackElement, c2: stack.last!) {
            stack.popLast()
            stack.popLast()
        }
    }
    return stack.isEmpty ? 1 : 0
}

var s = "{[()()]}"
var s2 = "([)()]"
var s1 = "())(()"
print(solution(&s))
