import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    guard !A.isEmpty, A.count <= 100_000 else { return 0 }

    let maxValue = A.max() ?? 0
    let sortedArray = A.enumerated().map { ($0.offset - $0.element, $0.offset + $0.element) }.sorted { $0.0 < $1.0 }

    var intersections = 0
    
    for i in 0..<A.count {

        let iRight = sortedArray[i].1
        let maxIndex = min(iRight + maxValue + 1, A.count)
        
        for j in i + 1..<maxIndex {

            let jLeft = sortedArray[j].0
            
            if iRight >= jLeft {
                intersections += 1
            }
        }

        guard intersections <= 10_000_000 else { return -1 }
    }

    return intersections
}

var a = [1, 5, 2, 1, 4, 0] // 11
solution(&a)
