// Codility task - https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78954288/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    Int(ceil(Double(Y - X) / Double(D)))
}

solution(20, 85, 30)
