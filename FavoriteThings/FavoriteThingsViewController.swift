//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jordan on 8/27/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class FavoriteThingsViewController: UITableViewController {
    
    var favoriteThings = ["Fav1", "Fav2", "Fav3", "Fav4", "Fav5", "Fav6", "Fav7", "Fav8", "Fav9", "Fav10", "Fav11", "Fav12", "Fav13", "Fav14", "Fav15"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteThings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteThingsItem", for: indexPath)
        cell.textLabel?.text = favoriteThings[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            favoriteThings.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

