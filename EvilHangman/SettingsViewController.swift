//
//  SettingsViewController.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 01/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import Foundation
=======
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb

class SettingsViewController: UIViewController {
    
    var sequeInt = 0
    
    let savedWordLength = NSUserDefaults.standardUserDefaults()
<<<<<<< HEAD
    let savedLivesValue = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wordLengthValue.text = String(savedWordLength.integerForKey("myInt"))
        wordLength.value = Float(savedWordLength.integerForKey("myInt"))
        
        livesQuantityDisplay.text = String(savedLivesValue.integerForKey("myLives"))
        liveQuantity.value = Float(savedLivesValue.integerForKey("myLives"))
=======
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLengthValue.text = String(savedWordLength.integerForKey("myInt"))
        wordLength.value = Float(savedWordLength.integerForKey("myInt"))
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var wordLength: UISlider!
<<<<<<< HEAD
    @IBOutlet weak var liveQuantity: UISlider!
    
    @IBOutlet weak var livesQuantityDisplay: UILabel!
    @IBOutlet weak var wordLengthValue: UILabel!
    
    var selectedValue = 0
    var livesValue = 0
    
    @IBAction func valueChanged(sender: UISlider) {
        
=======
    
    @IBOutlet weak var wordLengthValue: UILabel!
    
    var selectedValue: Int = 0
    
    @IBAction func valueChanged(sender: UISlider) {
        
        
        
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb
        selectedValue = Int(sender.value)

        savedWordLength.setInteger(selectedValue, forKey: "myInt")
        
        let ourInt = savedWordLength.integerForKey("myInt")
        
        sequeInt = ourInt
        
        wordLengthValue.text = String(ourInt)
<<<<<<< HEAD
    }
    
    @IBAction func liveQuantityAction(sender: UISlider) {
        
        livesValue = Int(sender.value)
        
        savedLivesValue.setInteger(livesValue, forKey: "myLives")
        
        livesQuantityDisplay.text = String(livesValue)
=======
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb
        
        
    }
    
<<<<<<< HEAD
    
    
    /*
=======
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewControler = segue.destinationViewController as! PlayViewController
        
        destinationViewControler.selectedValue2 = selectedValue
<<<<<<< HEAD
    }*/
=======
    }
>>>>>>> 12206a0d55b77ddeb65a1a0bd410cbe37ca124bb
}
