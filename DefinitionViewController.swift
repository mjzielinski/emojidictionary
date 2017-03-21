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
    
    //* emoji icon
    @IBOutlet weak var emojiLabel: UILabel!
    //* title for the emoji
    @IBOutlet weak var emojiTitle: UILabel!
    //* definition for the emoji
    @IBOutlet weak var emojiDefine: UILabel!
    
    //* setup Emoji object
    var currentEmoji = Emoji(icon: "", title: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //* when the view loads the tapped Emoji object is passed
        
        //* now get use properties from the object to replace label text
        emojiLabel.text = currentEmoji.icon
        emojiTitle.text = currentEmoji.title
        emojiDefine.text = currentEmoji.description
    }

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}


}
