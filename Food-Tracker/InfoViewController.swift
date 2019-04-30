//
//  NewViewController.swift
//  Food-Tracker
//
//  Created by Brandon Liang on 4/28/19.
//  Copyright © 2019 Brandon Liang. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController
{
    // MARK: Button outlets
    
    @IBOutlet weak var getNumFoodsLabel: UILabel!
    @IBOutlet weak var getTotalCostOfEntreesLabel: UILabel!
    @IBOutlet weak var getTotalCostOfAppetizersLabel: UILabel!
    @IBOutlet weak var getTotalCostOfDrinksLabel: UILabel!
    @IBOutlet weak var getTotalCostOfDessertsLabel: UILabel!
    @IBOutlet weak var getTotalCostLabel: UILabel!
    @IBOutlet weak var mostExpensiveLabel: UILabel!
    @IBOutlet weak var cheapestLabel: UILabel!
    @IBOutlet weak var recentActivityLabel: UILabel!
    
    // MARK: Calculations
    
    func getNumFoods() -> Int
    {
        return items.count
    }
    
    func getTotalCost() -> Double
    {
        return getTotalCostOfEntrees() + getTotalCostOfAppetizers() + getTotalCostOfDesserts() + getTotalCostOfDrinks()
    }
    
    func getTotalCostOfEntrees() -> Double
    {
        var ans = 0.0
        for food in items
        {
            if food.getTypeOfFood() == "Entree"
            {
                ans += food.cost
            }
        }
        return ans
    }
    
    func getTotalCostOfAppetizers() -> Double
    {
        var ans = 0.0
        for food in items
        {
            if food.getTypeOfFood() == "Appetizer"
            {
                ans += food.cost
            }
        }
        return ans
    }
    
    func getTotalCostOfDesserts() -> Double
    {
        var ans = 0.0
        for food in items
        {
            if food.getTypeOfFood() == "Dessert"
            {
                ans += food.cost
            }
        }
        return ans
    }
    
    func getTotalCostOfDrinks() -> Double
    {
        var ans = 0.0
        for food in items
        {
            if food.getTypeOfFood() == "Drink"
            {
                ans += food.cost
            }
        }
        return ans
    }
    
    func getMostExpensiveFood() -> String
    {
        var tmp = items[0].title
        var max = items[0].cost
        
        for item in items
        {
            if item.cost > max
            {
                max = item.cost
                tmp = item.title
            }
        }
        
        return tmp
    }
    
    func getCheapestFood() -> String
    {
        var tmp = items[0].title
        var min = items[0].cost
        
        for item in items
        {
            if item.cost < min
            {
                min = item.cost
                tmp = item.title
            }
        }
        
        return tmp
    }
    
    func mostRecentDate() -> String
    {
        return items[0].timestamp
    }
    
    // Do any additional setup after loading the view.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNumFoodsLabel.text = "Total number of foods: " + String(getNumFoods())
        getTotalCostOfEntreesLabel.text = "Total cost of entrees: $" + String(getTotalCostOfEntrees())
        getTotalCostOfAppetizersLabel.text = "Total cost of appetizers: $" + String(getTotalCostOfAppetizers())
        getTotalCostOfDrinksLabel.text = "Total cost of drinks: $" + String(getTotalCostOfDrinks())
        getTotalCostOfDessertsLabel.text = "Total cost of desserts: $" + String(getTotalCostOfDesserts())
        getTotalCostLabel.text = "Total cost of foods: $" + String(getTotalCost())
        mostExpensiveLabel.text = "Most expensive food: " + getMostExpensiveFood()
        cheapestLabel.text = "Cheapest food: " + getCheapestFood()
        recentActivityLabel.text = "Most recent activity: " + mostRecentDate()
    }
}
