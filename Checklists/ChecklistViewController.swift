//
//  ViewController.swift
//  Checklists
//
//  Created by Magnus Holm on 21/11/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0Item: ChecklistItem
    var row1Item: ChecklistItem
    var row2Item: ChecklistItem
    var row3Item: ChecklistItem
    var row4Item: ChecklistItem
    
    required init?(coder aDecoder: NSCoder) {
        row0Item = ChecklistItem()
        row0Item.text = "Walk Dog"
        row0Item.checked = false
        
        row1Item = ChecklistItem()
        row1Item.text = "Brush Teeth"
        row1Item.checked = false
        
        row2Item = ChecklistItem()
        row2Item.text = "Learn iOS"
        row2Item.checked = false
        
        row3Item = ChecklistItem()
        row3Item.text = "Practice Soccer"
        row3Item.checked = false
        
        row4Item = ChecklistItem()
        row4Item.text = "Eat Ice Cream"
        row4Item.checked = false
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0Item.text
        }
        if indexPath.row == 1 {
            label.text = row1Item.text
        }
        if indexPath.row == 2 {
            label.text = row2Item.text
        }
        if indexPath.row == 3 {
            label.text = row3Item.text
        }
        if indexPath.row == 4 {
            label.text = row4Item.text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        
        return cell 
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        var isChecked = false
        if indexPath.row == 0 {
            isChecked = row0Item.checked
            row0Item.checked = !row0Item.checked
        }
        if indexPath.row == 1 {
            isChecked = row1Item.checked
            row1Item.checked = !row1Item.checked
        }
        if indexPath.row == 2 {
            isChecked = row2Item.checked
            row2Item.checked = !row2Item.checked
        }
        if indexPath.row == 3 {
            isChecked = row3Item.checked
            row3Item.checked = !row3Item.checked
        }
        if indexPath.row == 4 {
            isChecked = row4Item.checked
            row4Item.checked = !row4Item.checked
        }
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
    }
    
    
    
    
    
    
    
    
    

}

