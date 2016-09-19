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
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        let converter = NumberConverter()
        print(converter.convertRomanNumberToNumber("VIII"))
        
    }
    
    
    
    func setConstraints() {
        
        self.view.removeConstraints(self.view.constraints)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        // left wrapper view
        self.leftView.removeConstraints(self.leftView.constraints)
        self.leftView.translatesAutoresizingMaskIntoConstraints = false
        self.leftView.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        self.leftView.leftAnchor.constraintEqualToAnchor(self.view.leftAnchor).active = true
        self.leftView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
        self.leftView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.5).active = true
        
        // right wrapper view
        self.rightView.removeConstraints(self.rightView.constraints)
        self.rightView.translatesAutoresizingMaskIntoConstraints = false
        self.rightView.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        self.rightView.rightAnchor.constraintEqualToAnchor(self.view.rightAnchor).active = true
        self.rightView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
        self.rightView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.5).active = true
        
        // button "from numbers to roman numerals"
        self.numToRoman.removeConstraints(self.numToRoman.constraints)
        self.numToRoman.translatesAutoresizingMaskIntoConstraints = false
        self.numToRoman.centerXAnchor.constraintEqualToAnchor(self.leftView.centerXAnchor).active = true
        self.numToRoman.centerYAnchor.constraintEqualToAnchor(self.leftView.centerYAnchor).active = true
        self.numToRoman.heightAnchor.constraintEqualToConstant(150).active = true
        self.numToRoman.widthAnchor.constraintEqualToAnchor(self.leftView.widthAnchor, multiplier: 0.8).active = true
        
        // buton "from roman numerals to numbers"
        self.romToNumber.removeConstraints(self.romToNumber.constraints)
        self.romToNumber.translatesAutoresizingMaskIntoConstraints = false
        self.romToNumber.centerXAnchor.constraintEqualToAnchor(self.rightView.centerXAnchor).active = true
        self.romToNumber.centerYAnchor.constraintEqualToAnchor(self.rightView.centerYAnchor).active = true
        self.romToNumber.heightAnchor.constraintEqualToConstant(150).active = true
        self.romToNumber.widthAnchor.constraintEqualToAnchor(self.rightView.widthAnchor, multiplier: 0.8).active = true
        
        self.view.layoutIfNeeded()
    }
    
    
    @IBAction func numToRomanButtonTapped(sender: AnyObject) {
        let nextViewController = self.storyboard!.instantiateViewControllerWithIdentifier("NumberToRomanViewController")
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    
    @IBAction func romToNumberButtonTapped(sender: AnyObject) {
        let nextViewController = self.storyboard!.instantiateViewControllerWithIdentifier("RomanToNumberViewController")
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
}
