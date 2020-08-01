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
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🇺🇸" {
            definitionLabel.text = "Welcome to America"}
        
        if emoji == "⚾️" {
            definitionLabel.text = "This is our pastime"}
       
        if emoji == "🏕" {
            definitionLabel.text = "Our best idea"}
        
        if emoji == "🗽" {
            definitionLabel.text = "See this,  get PSYCHED"}
        
        if emoji == "🏔" {
            definitionLabel.text = "We have big ol' mountains"}
        
        if emoji == "🏖" {
            definitionLabel.text = "We have beautiful beaches"}
        
        if emoji == "🤝" {
            definitionLabel.text = "We can get better"}
        
        if emoji == "☝️" {
                definitionLabel.text = "Back to back world war champs"}
        
            }
    

}
