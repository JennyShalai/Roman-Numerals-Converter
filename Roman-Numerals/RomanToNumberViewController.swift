//
//  RomanToNumberViewController.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/18/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class RomanToNumberViewController: UIViewController {

    @IBOutlet weak var wrapperView: UIView!
    @IBOutlet weak var wrapperStackView: UIStackView!
    @IBOutlet weak var romanInput: UILabel!
    @IBOutlet weak var numberOutput: UILabel!
    
    
    let converter = NumberConverter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.romanInput.text = "Enter roman number"
        self.numberOutput.text = ""
        self.romanInput.adjustsFontSizeToFitWidth = true
        self.numberOutput.adjustsFontSizeToFitWidth = true
    }
    
    func setConstraints() {
    
        self.view.removeConstraints(self.view.constraints)
        
        self.wrapperView.removeConstraints(self.wrapperView.constraints)
        self.wrapperView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        self.wrapperView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        self.wrapperView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
        self.wrapperView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor).active = true
        
        self.romanInput.removeConstraints(self.romanInput.constraints)
        self.romanInput.translatesAutoresizingMaskIntoConstraints = false
        self.romanInput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.romanInput.topAnchor.constraintEqualToAnchor(self.wrapperView.topAnchor, constant: 25).active = true
        self.romanInput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.romanInput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.15).active = true
        
        self.numberOutput.removeConstraints(self.numberOutput.constraints)
        self.numberOutput.translatesAutoresizingMaskIntoConstraints = false
        self.numberOutput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.numberOutput.topAnchor.constraintEqualToAnchor(self.romanInput.bottomAnchor, constant: 5).active = true
        self.numberOutput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.numberOutput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.15).active = true
        
        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraintEqualToAnchor(self.numberOutput.bottomAnchor, constant: 20).active = true
        self.wrapperStackView.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.wrapperStackView.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.4).active = true
        self.wrapperStackView.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier:  0.8).active = true
        
                
    
    }
    
    @IBAction func iTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "I"
        } else {
            self.romanInput.text! += "I"
        }
        self.validation()
    }
    
    @IBAction func vTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "V"
        } else {
            self.romanInput.text! += "V"
        }
        self.validation()
    }
    
    @IBAction func xTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "X"
        } else {
            self.romanInput.text! += "X"
        }
        self.validation()
    }
    
    @IBAction func lTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "L"
        } else {
            self.romanInput.text! += "L"
        }
        self.validation()
    }
    
    @IBAction func cTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "C"
        } else {
            self.romanInput.text! += "C"
        }
        self.validation()
    }
    
    @IBAction func dTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "D"
        } else {
            self.romanInput.text! += "D"
        }
        self.validation()
    }
    
    @IBAction func mTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "M"
        } else {
            self.romanInput.text! += "M"
        }
        self.validation()
    }
    
    // delete last char in Roman string
    @IBAction func delTapped(sender: AnyObject) {
        if !self.romanInput.text!.containsString("Enter") && self.romanInput.text!.characters.count == 1 {
            self.romanInput.text! = "Enter roman number"
            self.numberOutput.text! = ""
        } else if !self.romanInput.text!.containsString("Enter") && self.romanInput.text!.characters.count > 0 {
            self.romanInput.text! = String(self.romanInput.text!.characters.dropLast())
            self.validation()
        }
    }
    
    
    
    @IBAction func infoTapped(sender: AnyObject) {
        
    }
    
    private func validation() {
        let converterRespound = self.converter.convertRomanNumberToNumber(self.romanInput.text!)
        
        if converterRespound == 9999 {
            self.numberOutput.text = "Not valid number"
        } else if converterRespound == 9998 {
            self.numberOutput.text = "Convert up to 1000"
        } else {
            self.numberOutput.text = "\(converterRespound)"
        }
    }
    
    
    
    
}
