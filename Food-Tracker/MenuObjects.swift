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
    var title: String?
    var description: String?
    var cost: Double?
    
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
