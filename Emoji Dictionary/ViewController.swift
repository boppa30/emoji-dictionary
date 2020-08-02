//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ben Leimbach on 7/29/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var primarytableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        primarytableview.dataSource = self
        primarytableview.delegate = self
        emojis = makeEmojiArray()

    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🇺🇸"
        emoji1.created = 1776
        emoji1.category = "Flag"
        emoji1.definition = "Welcome to America!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "⚾️"
        emoji2.created = 1805
        emoji2.category = "Object"
        emoji2.definition = "This is our national pastime"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🏕"
        emoji3.created = 0
        emoji3.category = "Activity"
        emoji3.definition = "We like to do this"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🗽"
        emoji4.created = 1886
        emoji4.category = "Monument"
        emoji4.definition = "This thang came from France"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🏔"
        emoji5.created = 0
        emoji5.category = "Nature"
        emoji5.definition = "Our tallest Mountain: Mt. McKinley"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🏖"
        emoji6.created = 0
        emoji6.category = "Nature"
        emoji6.definition = "We have lots of these"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🤝"
        emoji7.created = 1968
        emoji7.category = "Hands"
        emoji7.definition = "Collaboratin'"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "☝️"
        emoji8.created = 1946
        emoji8.category = "Hands"
        emoji8.definition = "Back 2 Back World War Champs"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }
    
}


