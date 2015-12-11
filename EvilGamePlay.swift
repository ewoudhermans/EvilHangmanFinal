//
//  EvilGamePlay.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 10/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import Foundation

public var evilWordsArray: [String] = []
public var final = ""
var wordRepresentation = [Character]()
public var arrayInt = 0


public class EvilMode {
    
    var evilCount = 0
    
    func evilArray() {
        
        var x = 0
        
        // Creates array with words that have the same length of the first random word
        for index in wordsAfterCheck {
            
            let currentWord: String? = index
            let lengthCurrentWord = currentWord!.characters.count
            
            if length != lengthCurrentWord {
                
                wordsAfterCheck.removeAtIndex(x)
                x = x - 1
            }
            x = x + 1
        }
        
        let letter2 = Character(letter!)
        // Creates dictionary with a string as key and an array as value
        var keyWithWordsDict = [String: [String]]()
        var keyOfBiggestArray = ""
        
        // Devides array in word-classes and arranges them in a dictionary
        for word in wordsAfterCheck {
            
            var wordKey = ""
            
            // Creates for every word class a key
            for character in word.characters {
                
                if String(character) == letter {
                    
                    wordKey = wordKey + letter!
                }
                else {
                    
                    wordKey = wordKey + "*"
                }
            }
            
            // Checks if key alreay exists else creates new
            if keyWithWordsDict[wordKey] == nil {
                
                keyWithWordsDict[wordKey] = [word]
            }
            else {
                
                keyWithWordsDict[wordKey]!.append(word)
            }
        }
        
        // Prints the cataloged dictionary
        print (keyWithWordsDict)
        print ("einde xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
        
        var keyOfBiggestArrayCount = 0
        
        // Figures out witch key is connected to the biggest array and saves corresponding key
        for key in keyWithWordsDict.keys {
            
            var valueCount = 0
            
            for value in keyWithWordsDict[key]! {
                
                valueCount = valueCount + 1
            }
            
            if valueCount > keyOfBiggestArrayCount {
                
                keyOfBiggestArrayCount = valueCount
                keyOfBiggestArray = key
            }
        }
        evilCount = 0
        
        wordsAfterCheck.removeAll()
        wordsAfterCheck = keyWithWordsDict[keyOfBiggestArray]!
        
        // Prints the array of the key that had the most values (most possibilities)
        print (wordsAfterCheck)
        
        let afterCheckCount = wordsAfterCheck.count
        
        // Checks if how many words in the array contain the guessed letter
        for index in wordsAfterCheck {
            
            let currentWord: String? = index
            let currentWordArray = Array(currentWord!.characters)
            
            if currentWordArray.contains(letter2) {
                
                evilCount = evilCount + 1
            }
        }
        
        // Creates array filled with * characters (only first time)
        if arrayInt == 0 {
            
            for var index = 0; index < length; ++index {
                
                wordRepresentation.append("*")
            }
            arrayInt = arrayInt + 1
        }
        
        // Checks if all remaining words in the array contain the guessed letter, when true,
        // adds the letter to the earlier created array filled with * characters
        if evilCount == afterCheckCount {
            
            var y = 0
            
            let biggestKeyArray = Array(keyOfBiggestArray.characters)

            for index in biggestKeyArray {
                
                if index != "*" {
                    wordRepresentation.removeAtIndex(y)
                    wordRepresentation.insert(index, atIndex: y)
                }
                y = y + 1
            }
            
        }
        
        print (wordRepresentation)
        
        final = String(wordRepresentation)
    }
}