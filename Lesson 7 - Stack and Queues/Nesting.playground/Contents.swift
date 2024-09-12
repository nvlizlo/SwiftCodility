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
