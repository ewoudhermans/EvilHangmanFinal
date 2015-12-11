//
//  GoodGamePlay.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 10/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import Foundation

public var letter: String?
public var live = 10
public var length : Int = 0

// Stores the amount of lives that are left when users wins
let savedScores = NSUserDefaults.standardUserDefaults()

public class goodGamePlay {
    
    // Checks if word contains chosen letter
    func check () {
        
        var wordArray = Array(word!.characters)
        let searchCharacter: Character = letter![letter!.startIndex]
        let letter2 = Character(letter!)
        
        // Prints random selected word
        print (stringRepresentation)
        
        if wordArray.contains(letter2) {
            
            var x = 0
            
            while x < wordArray.count {
                
                // When letter is in word, removes * character at index from answer-array and inserts letter
                if wordArray[x] == searchCharacter {
                    answer.removeAtIndex(x)
                    answer.insert(searchCharacter, atIndex: x)
                    stringRepresentation = String(answer)
                }
                x = x + 1
            }
        }
    }
    
    // Returns true when all letters are guessed, else false
    func wordIsGuesed() -> Bool {
        
        if stringRepresentation == word {
            
            savedScores.setInteger(live, forKey: "myScore")
            
            return true
        }
        else {
            return false
        }
    }
}