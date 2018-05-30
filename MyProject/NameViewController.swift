//
//  NameViewController.swift
//  MyProject
//
//  Created by Antoine DAUGUET on 30/05/2018.
//  Copyright © 2018 Antoine DAUGUET. All rights reserved.
//

import Foundation
import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    private var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = name
    }
    
    func configure(name: String) {
        self.name = name
    }
}
