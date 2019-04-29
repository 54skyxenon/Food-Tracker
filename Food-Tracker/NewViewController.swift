//
//  NewViewController.swift
//  Food-Tracker
//
//  Created by Brandon Liang on 4/28/19.
//  Copyright © 2019 Brandon Liang. All rights reserved.
//

import UIKit

class NewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    let typesOfItems = ["Entree", "Drink", "Dessert", "Appetizer"]
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var dishNameLabel: UITextField!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var countryOfOriginLabel: UITextField!
    @IBOutlet weak var costLabel: UITextField!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typesOfItems.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return typesOfItems[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    // MARK: Segues
    
    @IBAction func createDishButton(_ sender: Any) //this action builds the object and segues back to the main screen
    {
        let title = dishNameLabel.text!
        let description = descriptionLabel.text!
        let cost = Double(costLabel.text!)! //BE CAREFUL, ASSUMES PERFECT INPUT
        let country = countryOfOriginLabel.text!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        let timestamp = dateFormatter.string(from: timePicker.date)
        
        switch typesOfItems[pickerView.selectedRow(inComponent: 0)] //check which type of food it is and initialize to the appropriate subclass
        {
            case "Entree":
                items.insert(Entree(title: title, description: description, cost: cost, timestamp: timestamp, country: country), at: 0)
            case "Drink":
                items.insert(Drink(title: title, description: description, cost: cost, timestamp: timestamp, country: country), at: 0)
            case "Dessert":
                items.insert(Dessert(title: title, description: description, cost: cost, timestamp: timestamp, country: country), at: 0)
            case "Appetizer":
                items.insert(Appetizer(title: title, description: description, cost: cost, timestamp: timestamp, country: country), at: 0)
            default:
                break
        }
        
        performSegue(withIdentifier: "backAfterCreateDish", sender: self)
    }
}
