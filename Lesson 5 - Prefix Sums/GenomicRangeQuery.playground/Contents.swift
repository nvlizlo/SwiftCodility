//: Playground - noun: a place where people can play

import UIKit

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    var solution = Array(repeating: 0, count: P.count)
    var lastAOccurences = Array(repeating: -1, count: S.characters.count)
    var lastCOccurences = Array(repeating: -1, count: S.characters.count)
    var lastGOccurences = Array(repeating: -1, count: S.characters.count)
    var lastTOccurences = Array(repeating: -1, count: S.characters.count)
    
    for i in 0..<S.characters.count {
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

var dna = "CAGCCTA"
var p = [2, 5, 0]
var q = [4, 5, 6]

solution(&dna, &p, &q)
