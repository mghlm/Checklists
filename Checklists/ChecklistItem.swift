//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Magnus Holm on 23/11/2017.
//  Copyright © 2017 Magnus Holm. All rights reserved.
//

import Foundation

class ChecklistItem {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
}
