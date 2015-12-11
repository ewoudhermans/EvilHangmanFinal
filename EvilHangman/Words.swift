//
//  Words.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 07/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import Foundation


public class Words {
    
    public static let sharedInstance = Words()
    public var words: Array<String>?
    private init() {}
    
    public func loadInstanceWords () {
        if (self.words == nil) {
            self.words = loadText()
        }
    }
    
    private func loadText() -> Array<String> {
        
        do {
            let filePath = NSBundle.mainBundle().pathForResource("words", ofType: "plist")
            return NSArray(contentsOfFile: filePath!) as! [String]
        }
        catch {
            print ("error occured in loadText function")
        }
        
    }
}

public class WordList {
    
    let wordlist = Words.sharedInstance.loadInstanceWords()
    public var wordList: NSArray = Words.sharedInstance.words!
}