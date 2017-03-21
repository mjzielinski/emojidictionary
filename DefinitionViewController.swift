//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Michael Zielinski on 3/20/17.
//  Copyright © 2017 Worldengine. All rights reserved.
//

//* Added file for new view controller class. File -> New -> Cocoa Touch Class
//* Go back to main storyboard. Connect new view controller to second storyboard.
//* Select view controller, newspaper, add name of new View Controller as Class

import UIKit

class DefinitionViewController: UIViewController {
    
    //* connect emoji label to var emojilabel
    @IBOutlet weak var emojiLabel: UILabel!
    //* title for the emoji
    @IBOutlet weak var emojiTitle: UILabel!
    //* definition for the emoji
    @IBOutlet weak var emojiDefine: UILabel!
    
    //* this variable gets changed in segue
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //* when the view loads, the emoji, label, and def will be set here
        
        //* use the emoji variable to set emojilabel
        emojiLabel.text = emoji
        
        //* use switch statement to assign title and definition
        switch emoji {
        case "😀":
            emojiTitle.text = "Smiley"
            emojiDefine.text = "Use to express happiness."
            break
        case "😂":
            emojiTitle.text = "Crying Laughing"
            emojiDefine.text = "Use when you are crying from laughter."
            break
        case "😅":
            emojiTitle.text = "Sweating"
            emojiDefine.text = "Use when you sweat in relief."
            break
        case "🤐":
            emojiTitle.text = "Not Talking"
            emojiDefine.text = "Use when you are not allowed to talk."
            break
        case "😎":
            emojiTitle.text = "Cool Sunglasses"
            emojiDefine.text = "Use when there is too much sunlight."
            break
        case "👽":
            emojiTitle.text = "Alien"
            emojiDefine.text = "Use when you see an alien or are an alien."
            break
        case "🤖":
            emojiTitle.text = "Robot"
            emojiDefine.text = "Use when you see a robot or are a robot."
            break
        case "👿":
            emojiTitle.text = "Evil Purple"
            emojiDefine.text = "Use when someone is evil and/or purple."
            break
        default:
            emojiTitle.text = ""
            emojiDefine.text = ""
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
