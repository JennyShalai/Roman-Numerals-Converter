//
//  MainViewController.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/18/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var numToRoman: UIButton!
    @IBOutlet weak var romToNumber: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
    }
    
    
    
    func setConstraints() {
        self.view.removeConstraints(self.view.constraints)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.numToRoman.removeConstraints(self.numToRoman.constraints)
        self.numToRoman.translatesAutoresizingMaskIntoConstraints = false
        self.numToRoman.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor, constant: -100).active = true
        self.numToRoman.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        self.numToRoman.heightAnchor.constraintEqualToConstant(100).active = true
        self.numToRoman.widthAnchor.constraintEqualToConstant(100).active = true
        
        self.romToNumber.removeConstraints(self.romToNumber.constraints)
        self.romToNumber.translatesAutoresizingMaskIntoConstraints = false
        self.romToNumber.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor, constant: 100).active = true
        self.romToNumber.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        self.romToNumber.heightAnchor.constraintEqualToConstant(100).active = true
        self.romToNumber.widthAnchor.constraintEqualToConstant(100).active = true
    }
}
