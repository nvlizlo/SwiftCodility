// Codility task - https://app.codility.com/programmers/lessons/5-prefix_sums/count_div/
// If you like the solution, please vote on stackoverflow - https://stackoverflow.com/a/78956299/3542688
// Or hit me a star on github - https://github.com/nvlizlo/SwiftCodility

import UIKit

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    B / K - A / K + (A % K == 0 ? 1 : 0)
}

solution(7, 12, 2)
