//: Playground - noun: a place where people can play

import UIKit

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    var solution = Array(repeating: 0, count: P.count)
    var lastAOccurences = Array(repeating: -1, count: S.count)
    var lastCOccurences = Array(repeating: -1, count: S.count)
    var lastGOccurences = Array(repeating: -1, count: S.count)
    var lastTOccurences = Array(repeating: -1, count: S.count)
    
    for i in 0..<S.count {
        write(lastCharacter: "A", inArray: &lastAOccurences, atIndex: i, from: S)
        write(lastCharacter: "C", inArray: &lastCOccurences, atIndex: i, from: S)
        write(lastCharacter: "G", inArray: &lastGOccurences, atIndex: i, from: S)
        write(lastCharacter: "T", inArray: &lastTOccurences, atIndex: i, from: S)
    }
    
    for i in 0..<Q.count {
        if lastAOccurences[Q[i]] >= P[i] {
            solution[i] = 1
        } else if lastCOccurences[Q[i]] >= P[i] {
            solution[i] = 2
        } else if lastGOccurences[Q[i]] >= P[i] {
            solution[i] = 3
        } else if lastTOccurences[Q[i]] >= P[i] {
            solution[i] = 4
        }
    }
    
    return solution
}

func write(lastCharacter c: Character, inArray lastOccurencesArray: inout [Int], atIndex i: Int, from s: String) {
    let ss = NSString(string: s)
    let char = ss.substring(with: NSMakeRange(i, 1))
    if Character(char) == c {
        lastOccurencesArray[i] = i
    } else {
        lastOccurencesArray[i] = i > 0 ? lastOccurencesArray[i-1] : -1
    }
}

func solution2(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    let S = S as NSString
    var solution = Array(repeating: 0, count: P.count)

    var pA = Array(repeating: 0, count: S.length + 1)
    var pC = Array(repeating: 0, count: S.length + 1)
    var pG = Array(repeating: 0, count: S.length + 1)

    for i in 1..<S.length + 1 {
        let character = S.character(at: i - 1)
        pA[i] = pA[i - 1] + (character == 65 ? 1 : 0)
        pC[i] = pC[i - 1] + (character == 67 ? 1 : 0)
        pG[i] = pG[i - 1] + (character == 71 ? 1 : 0)
    }

    for i in 0..<P.count {
        let upperBound = Q[i] + 1
        let lowerBound = P[i]

        if pA[upperBound] - pA[lowerBound] > 0 {
            solution[i] = 1
        } else if pC[upperBound] - pC[lowerBound] > 0 {
            solution[i] = 2
        } else if pG[upperBound] - pG[lowerBound] > 0 {
            solution[i] = 3
        } else {
            solution[i] = 4
        }
    }

    return solution
}

var dna = "CAGCCTA"
var p = [2, 5, 0]
var q = [4, 5, 6]

solution2(&dna, &p, &q)
