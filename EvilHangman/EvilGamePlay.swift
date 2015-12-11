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
        
        var keyWithWordsDict = [String: [String]]()
        var keyOfBiggestArray = ""
        
        for word in wordsAfterCheck {
            
            var wordKey = ""
            
            for character in word.characters {
                
                if String(character) == letter {
                    
                    wordKey = wordKey + letter!
                }
                else {
                    
                    wordKey = wordKey + "*"
                }
            }
            
            if keyWithWordsDict[wordKey] == nil {
                
                keyWithWordsDict[wordKey] = [word]
            }
            else {
                
                keyWithWordsDict[wordKey]!.append(word)
            }
        }
        
        print (keyWithWordsDict)
        print ("einde xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
        
        var keyOfBiggestArrayCount = 0
        
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
        
        print ("oooooooooooooooooooo")
        print (wordsAfterCheck)
        
        let afterCheckCount = wordsAfterCheck.count
        
        
        for index in wordsAfterCheck {
            
            let currentWord: String? = index
            let currentWordArray = Array(currentWord!.characters)
            
            if currentWordArray.contains(letter2) {
                
                evilCount = evilCount + 1
            }
        }
        
        if arrayInt == 0 {
            
            for var index = 0; index < length; ++index {
                
                wordRepresentation.append("*")
                
            }
            arrayInt = arrayInt + 1
        }
        
        print (evilCount)
        print(afterCheckCount)
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
        print (keyOfBiggestArray)
        
        final = String(wordRepresentation)
        
    }
}