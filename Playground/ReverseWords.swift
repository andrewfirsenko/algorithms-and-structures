//
//  ReverseWords.swift
//  Playground
//
//  Created by Andrew on 21.10.2026.
//

import Foundation

/// Разворачивает порядок слов в строке.
///
/// Знаки препинания и пробелы остаются на своих местах,
/// регистр первой буквы определяется позицией слова:
/// "Hey, hello world!" -> "World, hello hey!"
class ReverseWords {
    func reverse(_ text: String) -> String {
        var words: [String] = []
        var symbols: [String] = []
        
        var currentWord: [Character] = []
        var currentSymbols: [Character] = []
        for ch in text {
            if ch.isLetter {
                if !currentSymbols.isEmpty {
                    symbols.append(String(currentSymbols))
                    currentSymbols.removeAll()
                }
                currentWord.append(ch)
            } else {
                if !currentWord.isEmpty {
                    words.append(String(currentWord))
                    currentWord.removeAll()
                }
                currentSymbols.append(ch)
            }
        }
        if !currentSymbols.isEmpty {
            symbols.append(String(currentSymbols))
        }
        if !currentWord.isEmpty {
            words.append(String(currentWord))
        }
        
        var answer = ""
        words.reverse()
        for (word, symbol) in zip(words, symbols) {
            answer += (word + symbol)
        }
        for word in words.dropFirst(symbols.count) {
            answer += word
        }
        return answer.prefix(1).uppercased() + answer.dropFirst().lowercased()
    }
}
