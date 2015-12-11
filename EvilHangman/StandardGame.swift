//
//  StandardGame.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 10/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import Foundation

let savedWordLength = NSUserDefaults.standardUserDefaults()
var answer: Array<Character> = Array(count: 10 , repeatedValue: "\t")
var wordsAfterCheck: [String] = []
var word: String?
var stringRepresentation = ""

class standardGame {
    
    // Creates multiple forms of a random word selected from an 
    // array of words that all have a max length that the user has put in
    func randomWord() {
        
        wordsAfterCheck.removeAll()
        
        // Creates array of words with max length given by user (from words.plist)
        let selectedValue = savedWordLength.integerForKey("myInt")
    
        for index in WordList().wordList {
    
            let currentWord: String? = index as? String
            let lengthWord = currentWord!.characters.count
        
            if lengthWord <= selectedValue {
                wordsAfterCheck.append(currentWord!)
            }
        }
    
        let RandomNumber = Int(arc4random_uniform(UInt32(wordsAfterCheck.count)))
        
        // Selects random word
        word = wordsAfterCheck[RandomNumber]
    
        length = word!.characters.count
        
        // Array of * characters with length of random word
        answer = Array(count: length, repeatedValue: "*")
        stringRepresentation = String(answer)
    }
}






