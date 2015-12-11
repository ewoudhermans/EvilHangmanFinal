//
//  SaveScoreViewController.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 06/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit

class SaveScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var name: UITextField!
    
    let savedScores = NSUserDefaults.standardUserDefaults()
    let highScoreDict = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = ("You've won with ") + String(live) + (" lives to spare!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Dictionary to save score with corresponding name
    var scoresDict: Dictionary<String, Int> = [:]
    
    @IBAction func saveScore(sender: AnyObject) {
        
        let scoresave = savedScores.integerForKey("myScore")
        let wordKey = name.text
        
        scoresDict = highScoreDict.dictionaryForKey("myDict") as! Dictionary<String, Int>
        
        // Checks if name already exists, else creates new (key)
        if scoresDict[wordKey!] == nil {
            
            scoresDict[wordKey!] = scoresave
        }
        else {
            if live > Int(scoresDict[wordKey!]! as! NSNumber) {
                scoresDict.updateValue(scoresave, forKey: wordKey!)
            }
        }
        
        highScoreDict.setObject(scoresDict, forKey: "myDict")
        
        // Redirects to HighsscoresTableViewController
        let vc: AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("scoreFinal")
        showViewController(vc as! HightscoresTableViewController, sender: vc)
    }
    

}
