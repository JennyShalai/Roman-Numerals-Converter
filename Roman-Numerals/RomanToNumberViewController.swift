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
    @IBOutlet weak var convertButton: UIButton!
    
    let converter = NumberConverter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.romanInput.text = "Enter Roman Number"
        self.romanInput.adjustsFontSizeToFitWidth = true
        
        
        
    }
    
    func setConstraints() {
    
        self.view.removeConstraints(self.view.constraints)
        
        self.wrapperView.removeConstraints(self.wrapperView.constraints)
        self.wrapperView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        self.wrapperView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        self.wrapperView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor).active = true
        self.wrapperView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor).active = true
        
        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraintEqualToAnchor(self.wrapperView.centerYAnchor).active = true
        self.wrapperStackView.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.wrapperStackView.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.35).active = true
        self.wrapperStackView.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor).active = true
        
        self.numberOutput.removeConstraints(self.numberOutput.constraints)
        self.numberOutput.translatesAutoresizingMaskIntoConstraints = false
        self.numberOutput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.numberOutput.bottomAnchor.constraintEqualToAnchor(self.wrapperView.centerYAnchor, constant: -5).active = true
        self.numberOutput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.numberOutput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.2).active = true
        
        self.romanInput.removeConstraints(self.romanInput.constraints)
        self.romanInput.translatesAutoresizingMaskIntoConstraints = false
        self.romanInput.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.romanInput.bottomAnchor.constraintEqualToAnchor(self.numberOutput.topAnchor, constant: -5).active = true
        self.romanInput.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.8).active = true
        self.romanInput.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.2).active = true
        
        self.convertButton.removeConstraints(self.convertButton.constraints)
        self.convertButton.translatesAutoresizingMaskIntoConstraints = false
        self.convertButton.topAnchor.constraintEqualToAnchor(self.wrapperStackView.bottomAnchor, constant: 10).active = true
        self.convertButton.centerXAnchor.constraintEqualToAnchor(self.wrapperView.centerXAnchor).active = true
        self.convertButton.heightAnchor.constraintEqualToAnchor(self.wrapperView.heightAnchor, multiplier: 0.1).active = true
        self.convertButton.widthAnchor.constraintEqualToAnchor(self.wrapperView.widthAnchor, multiplier: 0.5).active = true
        
    
    }
    
    @IBAction func iTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "I"
        } else {
            self.romanInput.text! += "I"
        }
    }
    
    @IBAction func vTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "V"
        } else {
            self.romanInput.text! += "V"
        }
    }
    
    @IBAction func xTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "X"
        } else {
            self.romanInput.text! += "X"
        }
    }
    
    @IBAction func lTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "L"
        } else {
            self.romanInput.text! += "L"
        }
    }
    
    @IBAction func cTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "C"
        } else {
            self.romanInput.text! += "C"
        }
    }
    
    @IBAction func dTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "D"
        } else {
            self.romanInput.text! += "D"
        }
    }
    
    @IBAction func mTapped(sender: AnyObject) {
        if self.romanInput.text!.containsString("Enter") {
            self.romanInput.text! = "M"
        } else {
            self.romanInput.text! += "M"
        }
    }
    
    // delete last char in Roman string
    @IBAction func delTapped(sender: AnyObject) {
        if !self.romanInput.text!.containsString("Enter") && self.romanInput.text!.characters.count == 1 {
            self.romanInput.text! = "Enter Roman Number"
        } else if !self.romanInput.text!.containsString("Enter") && self.romanInput.text!.characters.count > 0 {
            self.romanInput.text! = String(self.romanInput.text!.characters.dropLast())
        }
    }
    
    
    
    @IBAction func infoTapped(sender: AnyObject) {
        
    }
    
    @IBAction func convertTapped(sender: AnyObject) {
        let converterRespound = self.converter.convertRomanNumberToNumber(self.romanInput.text!)
        
        if converterRespound == 9999 {
            self.numberOutput.text! = "Not valid number"
        } else {
            self.numberOutput.text! = "\(converterRespound)"
        }
    }
    
    
    
    
}
