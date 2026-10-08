//
//  1021. Remove Outermost Parentheses.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 08.10.2026.
//

class Solution1021 {
    func removeOuterParentheses(_ s: String) -> String {
        var answer: [Character] = []
        var count = 0
        s.forEach { parenth in
            if count > 0 {
                answer.append(parenth)
            }
            
            if parenth == "(" {
                count += 1
            } else {
                count -= 1
            }
            
            if count <= 0 {
                answer.removeLast()
            }
        }
        
        return String(answer)
    }
}
