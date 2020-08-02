//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ben Leimbach on 7/31/20.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        createdLabel.text = "Created: \(emoji.created)"
        categoryLabel.text = "Emoji type: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
       
            }
    

}
