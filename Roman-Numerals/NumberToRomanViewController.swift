//
//  ViewController.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/16/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class NumberToRomanViewController: UIViewController {

    
    @IBOutlet weak var wrapperView: UIView!
    @IBOutlet weak var wrapperStackView: UIStackView!
    @IBOutlet weak var numberInput: UILabel!
    @IBOutlet weak var romanOutput: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    
    let converter = NumberConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setConstraints()
       
        
       
        

    }
    

    func setConstraints() {
        
        self.view.removeConstraints(self.view.constraints)
        
        // container view
        self.wrapperView.removeConstraints(self.wrapperView.constraints)
        self.wrapperView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperView.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        self.wrapperView.leftAnchor.constraintEqualToAnchor(self.view.leftAnchor).active = true
        self.wrapperView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
        self.wrapperView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor).active = true
        
        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraintEqualToAnchor(self.wrapperView.centerYAnchor).active = true
        self.wrapperStackView.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.wrapperStackView.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.35).active = true
        self.wrapperStackView.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor).active = true
        
        self.romanOutput.removeConstraints(self.romanOutput.constraints)
        self.romanOutput.translatesAutoresizingMaskIntoConstraints = false
        self.romanOutput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.romanOutput.bottomAnchor.constraintEqualToAnchor(self.wrapperView.centerYAnchor, constant: -5).active = true
        self.romanOutput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.romanOutput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.2).active = true
        
        self.numberInput.removeConstraints(self.numberInput.constraints)
        self.numberInput.translatesAutoresizingMaskIntoConstraints = false
        self.numberInput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.numberInput.bottomAnchor.constraintEqualToAnchor(self.romanOutput.topAnchor, constant: -5).active = true
        self.numberInput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.numberInput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.2).active = true
        
        self.convertButton.removeConstraints(self.convertButton.constraints)
        self.convertButton.translatesAutoresizingMaskIntoConstraints = false
        self.convertButton.topAnchor.constraintEqualToAnchor(self.wrapperStackView.bottomAnchor, constant: 10).active = true
        self.convertButton.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.convertButton.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.1).active = true
        self.convertButton.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.5).active = true
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

