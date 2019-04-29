//
//  NewViewController.swift
//  Food-Tracker
//
//  Created by Brandon Liang on 4/28/19.
//  Copyright © 2019 Brandon Liang. All rights reserved.
//

import UIKit

class NewViewController: UIViewController
{
    let typesOfItems = ["Entree", "Drink","Dessert","Appetizer"]
    
    @IBAction func createDishButton(_ sender: Any) {
        performSegue(withIdentifier: "backAfterCreateDish", sender: self) // should be the last thing
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
