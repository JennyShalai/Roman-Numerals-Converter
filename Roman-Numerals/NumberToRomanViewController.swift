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
    
    
    let converter = NumberConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.numberInput.text = "Enter number up to 1999"
        self.romanOutput.text = ""
        self.numberInput.adjustsFontSizeToFitWidth = true
        self.romanOutput.adjustsFontSizeToFitWidth = true
       
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
        
        self.numberInput.removeConstraints(self.numberInput.constraints)
        self.numberInput.translatesAutoresizingMaskIntoConstraints = false
        self.numberInput.topAnchor.constraintEqualToAnchor(self.wrapperView.topAnchor, constant: 25).active = true
        self.numberInput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.numberInput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.numberInput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.15).active = true
        
        self.romanOutput.removeConstraints(self.romanOutput.constraints)
        self.romanOutput.translatesAutoresizingMaskIntoConstraints = false
        self.romanOutput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.romanOutput.topAnchor.constraintEqualToAnchor(self.numberInput.bottomAnchor, constant: 5).active = true
        self.romanOutput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.romanOutput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.15).active = true

        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraintEqualToAnchor(self.romanOutput.bottomAnchor, constant: 20).active = true
        self.wrapperStackView.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.wrapperStackView.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.5).active = true
        self.wrapperStackView.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        
        
       
        

    }
    
    @IBAction func oneTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "1"
        } else {
            self.numberInput.text! += "1"
        }
        self.validation()
    }
    
    
    @IBAction func twoTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "2"
        } else {
            self.numberInput.text! += "2"
        }
        self.validation()
    }
    
    @IBAction func threeTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "3"
        } else {
            self.numberInput.text! += "3"
        }
        self.validation()
    }
    
    @IBAction func fourTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "4"
        } else {
            self.numberInput.text! += "4"
        }
        self.validation()
    }
    
    @IBAction func fiveTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "5"
        } else {
            self.numberInput.text! += "5"
        }
        self.validation()
    }
    
    @IBAction func sixTapped(sender: AnyObject) {
        self.romanOutput.text! = ""
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "6"
        } else {
            self.numberInput.text! += "6"
        }
        self.validation()
    }
    @IBAction func sevenTapped(sender: AnyObject) {
        self.romanOutput.text! = ""
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "7"
        } else {
            self.numberInput.text! += "7"
        }
        self.validation()
    }
    
    @IBAction func eightTapped(sender: AnyObject) {
        self.romanOutput.text! = ""
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "8"
        } else {
            self.numberInput.text! += "8"
        }
        self.validation()
    }
    
    
    @IBAction func nineTapped(sender: AnyObject) {
        self.romanOutput.text! = ""
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "9"
        } else {
            self.numberInput.text! += "9"
        }
        self.validation()
    }
    
    @IBAction func zeroTapped(sender: AnyObject) {
        if self.numberInput.text!.containsString("Enter") || self.numberInput.text!.containsString("Zero") {
            self.romanOutput.text! = "Zero can not be the first!"
        } else {
            self.numberInput.text! += "0"
            self.validation()
        }
    }
    
    @IBAction func deleteTapped(sender: AnyObject) {
        if !self.numberInput.text!.containsString("Enter") && self.numberInput.text!.characters.count == 1 {
            self.numberInput.text! = "Enter number up to 1999"
            self.romanOutput.text! = ""
        } else if !self.numberInput.text!.containsString("Enter") && self.numberInput.text!.characters.count > 0 {
            self.numberInput.text! = String(self.numberInput.text!.characters.dropLast())
            self.validation()
        }
    }
    
    @IBAction func clearTapped(sender: AnyObject) {
        self.numberInput.text! = "Enter number up to 1999"
        self.romanOutput.text! = ""
    }
    
    private func validation() {
        if self.numberInput.text!.containsString("Enter") {
            self.numberInput.text! = "Enter number, please!"
        } else if self.numberInput.text! == "" || Int(self.numberInput.text!)! == 0 {
            self.romanOutput.text = "Zero is nothing"
            self.numberInput.text! = ""
        } else if Int(self.numberInput.text!)! > 1999 {
            self.romanOutput.text = "Enter smaller number"
        } else {
            let converterRespound = self.converter.convertNumberToRomanNumber(Int(self.numberInput.text!)!)

            self.romanOutput.text = converterRespound
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

