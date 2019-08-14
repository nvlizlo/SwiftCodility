import Foundation

func destroy(c: Character, c1: Character) -> Bool {
    if c == "{" && c1 == "}" || c == "[" && c1 == "]" || c == "(" && c1 == ")" {
        return true
    }
    return false
}

public func solution(_ S : inout String) -> Int {
    if S.isEmpty {
        return 1
    }
    
    var characters = S.map { $0 as Character }
    
    var stack = [Character]()
    stack.append(characters.first!)
    
    for i in 1..<characters.count {
        if !stack.isEmpty {
            let lastStack = stack.last!
            stack.append(characters[i])
            
            if destroy(c: lastStack, c1: stack.last!) {
                let _ = stack.popLast()
                let _ = stack.popLast()
            }
            
        } else {
            stack.append(characters[i])
            continue
        }
    }
    
    return stack.isEmpty ? 1 : 0
}

var s = "{[()()]}"
var s2 = "([)()]"
var s1 = "())(()"
print(solution(&s))
