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
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🇺🇸" {
            definitionLabel.text = "Welcome to America"
            categoryLabel.text = "Emoji Category: National Flag"
            createdLabel.text = "Created: 1776"
        }
        
        if emoji == "⚾️" {
            definitionLabel.text = "This is our pastime"
            categoryLabel.text = "Emoji Category: Games"
            createdLabel.text = "Created: Back in the day"
        }
       
        if emoji == "🏕" {
            definitionLabel.text = "Our best idea"
            categoryLabel.text = "Emoji Category: Activity"
            createdLabel.text = "Created: From the beginning of time"
        }
        
        if emoji == "🗽" {
            definitionLabel.text = "See this, get PSYCHED"
            categoryLabel.text = "Emoji Category: Monument"
            createdLabel.text = "Created: 1886"
        }
        
        if emoji == "🏔" {
            definitionLabel.text = "We have big ol' mountains"
            categoryLabel.text = "Emoji Category: Nature"
            createdLabel.text = "Created: From the beginning of time"
        }
        
        if emoji == "🏖" {
            definitionLabel.text = "We have beautiful beaches"
            categoryLabel.text = "Emoji Category: Nature"
            createdLabel.text = "Created: From the beginning of time"
        }
        
        if emoji == "🤝" {
            definitionLabel.text = "We can get better"
            categoryLabel.text = "Emoji Category: Hands"
            createdLabel.text = "Created: From the beginning of time"
        }
        
        if emoji == "☝️" {
            definitionLabel.text = "Back to back world war champs"
            categoryLabel.text = "Emoji Category: Hands"
            createdLabel.text = "Created: From the beginning of time"
        }
        
            }
    

}
