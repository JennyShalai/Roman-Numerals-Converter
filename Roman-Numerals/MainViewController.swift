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
        
        
    }
}
