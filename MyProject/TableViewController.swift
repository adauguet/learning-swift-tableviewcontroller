//
//  TableViewController.swift
//  MyProject
//
//  Created by Antoine DAUGUET on 23/05/2018.
//  Copyright © 2018 Antoine DAUGUET. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    let names = [["Julien", "Soizig", "Olivier", "Raphaël", "Éric"], ["Shirley", "Antoine"]]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nameViewController = segue.destination as? NameViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let name = names[indexPath.section][indexPath.row]
                nameViewController.configure(name: name)
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
