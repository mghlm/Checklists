//
//  ViewController.swift
//  Checklists
//
//  Created by Magnus Holm on 21/11/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Walk dog"
        }
        if indexPath.row % 5 == 1 {
            label.text = "Brush teeth"
        }
        if indexPath.row % 5 == 2 {
            label.text = "Learn iOS dev"
        }
        if indexPath.row % 5 == 3 {
            label.text = "Practice soccer"
        }
        if indexPath.row % 5 == 4 {
            label.text = "Eat ice cream"
        }
        
        return cell 
    }

}

