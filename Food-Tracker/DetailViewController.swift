//
//  DetailViewController.swift
//  Food-Tracker
//
//  Created by Brandon Liang on 4/28/19.
//  Copyright © 2019 Brandon Liang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    //@IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextField!
    
    func configureView()
    {
        // Update the user interface for the detail item.
        if let detail = detailItem
        {
            if let label = titleLabel
            {
                label.text = detail.title
            }
            if let label = timestampLabel
            {
                label.text = detail.timestamp
            }
            if let label = countryLabel
            {
                label.text = detail.country
            }
            if let label = typeLabel
            {
                label.text = detail.getTypeOfFood()
            }
            if let label = costLabel
            {
                label.text = "$" + String(detail.cost)
            }
            if let label = descriptionLabel
            {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: MenuItem? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

