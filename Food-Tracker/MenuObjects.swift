//
//  MenuObjects.swift
//  Food-Tracker
//
//  Created by Brandon Liang on 4/28/19.
//  Copyright © 2019 Brandon Liang. All rights reserved.
//

import Foundation

class MenuItem
{
    var title: String
    var description: String
    var cost: Double
    var timestamp: String
    var country: String
    
    init(title: String, description: String, cost: Double, timestamp: String, country: String) {
        self.title = title
        self.description = description
        self.cost = cost
        self.timestamp = timestamp
        self.country = country
    }
    
    func getTypeOfFood() -> String {
        return "MenuItem"
    }
}

class Drink: MenuItem
{
    override func getTypeOfFood() -> String {
        return "Drink"
    }
}

class Dessert: MenuItem
{
    override func getTypeOfFood() -> String {
        return "Dessert"
    }
}

class Entree: MenuItem
{
    override func getTypeOfFood() -> String {
        return "Entree"
    }
}

class Appetizer: MenuItem
{
    override func getTypeOfFood() -> String {
        return "Appetizer"
    }
}
