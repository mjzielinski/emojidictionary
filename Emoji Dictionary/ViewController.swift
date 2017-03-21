//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Michael Zielinski on 3/20/17.
//  Copyright © 2017 Worldengine. All rights reserved.
//

import UIKit

//* added UITableViewDataSource, UITableViewDelegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //* table view outlet
    @IBOutlet weak var tableView: UITableView!
    
    // get the array of Emoji objects
    var emojis = makeEmojiArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //* next two lines were added
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //* specify the number of rows in section for table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //* return the length of the array
        return emojis.count
    }
    
    //* specify cell for row at index path for table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //* set up UITableViewCell to return
        let cell = UITableViewCell()
        //* assign emoji from array to cell text
        cell.textLabel?.text = emojis[indexPath.row].icon + "   " + emojis[indexPath.row].title
        //* return the cell
        return cell
    }
    
    //* from navigation created segue moveSegue, added this function with didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //* don't leave last tap selected
        tableView.deselectRow(at: indexPath, animated: true)
        //* added performSegue assign emoji  object as sender
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
    }
    
    //* Editor -> Embed In -> Navigation Controller (Back Button)
    
    //* add prepare for segue to get next view controller ready
    //* Added DefinitionViewController Class
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //* create constant holding new view controller
        let defVC = segue.destination as! DefinitionViewController
        //* assign sender to currentEmoji var in new view controller
        defVC.currentEmoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

