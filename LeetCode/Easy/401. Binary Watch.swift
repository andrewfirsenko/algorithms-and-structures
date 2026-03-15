//
//  401. Binary Watch.swift
//  LeetCode
//
//  Created by Andrew on 17.02.2026.
//

import Foundation

class Solution401 {
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        guard turnedOn <= 8 else { return [] }
        
        var answer: [String] = []
        
        for i in 0...turnedOn {
            let hTurnedOn = i
            let mTurnedOn = turnedOn - i
            
            let hours = generateHours(turnedOn: hTurnedOn)
            let minutes = generateMinutes(turnedOn: mTurnedOn)
            guard !hours.isEmpty, !minutes.isEmpty else { continue }
            
            hours.forEach { hour in
                minutes.forEach { minute in
                    let hourString = String(hour)
                    let minuteString = String(minute)
                    let prefixMinuteString = String(repeating: "0", count: 2 - minuteString.count)
                    answer.append(
                        hourString + ":" + prefixMinuteString + minuteString
                    )
                }
            }
        }
        
        return answer
    }
    
    private func generateHours(turnedOn: Int) -> [Int] {
        guard turnedOn < 4 else { return [] }
        
        var answer: [Int] = []
        for i in 0..<12 {
            if i.nonzeroBitCount == turnedOn {
                answer.append(i)
            }
        }
        return answer
    }
    
    private func generateMinutes(turnedOn: Int) -> [Int] {
        guard turnedOn < 6 else { return [] }
        
        var answer: [Int] = []
        for i in 0..<60 {
            if i.nonzeroBitCount == turnedOn {
                answer.append(i)
            }
        }
        return answer
    }
}
