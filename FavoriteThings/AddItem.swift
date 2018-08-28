//
//  AddItem.swift
//  FavoriteThings
//
//  Created by Jordan on 8/28/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation
import UIKit

class AddItem: UIViewController {
    
    @IBOutlet weak var addItemTextField: UITextField!
    
    let vc = FavoriteThingsViewController()
    
    @IBAction func addFavoriteItem(_ sender: UIButton) {
        vc.favoriteThings.append(addItemTextField.text!)
        vc.tableView.insertRows(at: [IndexPath(row: vc.favoriteThings.count, section: 0)], with: .automatic)
    }
}
