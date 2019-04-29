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
    
    @IBAction func createDishButton(_ sender: Any) {
        performSegue(withIdentifier: "backAfterCreateDish", sender: self)
    }
    
    // MARK: Data-processing functions
    
}
