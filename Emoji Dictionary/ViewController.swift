//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ben Leimbach on 7/29/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var primarytableview: UITableView!
    
    var emojis = ["😂","🍤","🏕","🌈","💧","😅","🙃","☝️"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        primarytableview.dataSource = self
        primarytableview.delegate = self
        
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

}


