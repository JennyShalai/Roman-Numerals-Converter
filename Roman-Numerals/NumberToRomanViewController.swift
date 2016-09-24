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
    @IBOutlet weak var goBackButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var foreButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    var isBigInputNumber: Bool = false
    
    let converter = NumberConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.setButtonSettings()
        
    }
    

    private func setConstraints() {
        
        // remove storyboard constraints
        self.view.removeConstraints(self.view.constraints)
        
        // container view
        self.wrapperView.removeConstraints(self.wrapperView.constraints)
        self.wrapperView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.wrapperView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.wrapperView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        self.wrapperView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        // label for display user's input
        self.numberInput.removeConstraints(self.numberInput.constraints)
        self.numberInput.translatesAutoresizingMaskIntoConstraints = false
        self.numberInput.topAnchor.constraint(equalTo: self.wrapperView.topAnchor, constant: 30).isActive = true
        self.numberInput.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.numberInput.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.8).isActive = true
        self.numberInput.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.1).isActive = true
        
        // label for display output result
        self.romanOutput.removeConstraints(self.romanOutput.constraints)
        self.romanOutput.translatesAutoresizingMaskIntoConstraints = false
        self.romanOutput.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.romanOutput.topAnchor.constraint(equalTo: self.numberInput.bottomAnchor, constant: 10).isActive = true
        self.romanOutput.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.8).isActive = true
        self.romanOutput.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.1).isActive = true

        // container for numbers
        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraint(equalTo: self.romanOutput.bottomAnchor, constant: 10).isActive = true
        self.wrapperStackView.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.wrapperStackView.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.5).isActive = true
        self.wrapperStackView.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.8).isActive = true
        
        // "back" button
        self.goBackButton.removeConstraints(self.goBackButton.constraints)
        self.goBackButton.translatesAutoresizingMaskIntoConstraints = false
        self.goBackButton.bottomAnchor.constraint(equalTo: self.wrapperView.bottomAnchor, constant: -20).isActive = true
        self.goBackButton.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.goBackButton.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.1).isActive = true
        self.goBackButton.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setButtonSettings() {
        self.numberInput.text = "Enter number up to 1999"
        self.romanOutput.text = ""
        self.numberInput.adjustsFontSizeToFitWidth = true
        self.romanOutput.adjustsFontSizeToFitWidth = true
        self.setButtonDesign(button: self.oneButton)
        self.setButtonDesign(button: self.twoButton)
        self.setButtonDesign(button: self.threeButton)
        self.setButtonDesign(button: self.foreButton)
        self.setButtonDesign(button: self.fiveButton)
        self.setButtonDesign(button: self.sixButton)
        self.setButtonDesign(button: self.sevenButton)
        self.setButtonDesign(button: self.eightButton)
        self.setButtonDesign(button: self.nineButton)
        self.setButtonDesign(button: self.zeroButton)
        self.setButtonDesign(button: self.deleteButton)
        self.setButtonDesign(button: self.clearButton)
    }
    
    private func setButtonDesign(button: UIButton) {
        // design for buttons
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    
    @IBAction func oneTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "1"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "1"
        }
        self.validation()
    }
    
    
    @IBAction func twoTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "2"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "2"
        }
        self.validation()
    }
    
    @IBAction func threeTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "3"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "3"
        }
        self.validation()
    }
    
    @IBAction func fourTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "4"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "4"
        }
        self.validation()
    }
    
    @IBAction func fiveTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "5"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "5"
        }
        self.validation()
    }
    
    @IBAction func sixTapped(_ sender: AnyObject) {
        //self.romanOutput.text! = ""
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "6"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "6"
        }
        self.validation()
    }
    @IBAction func sevenTapped(_ sender: AnyObject) {
        //self.romanOutput.text! = ""
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "7"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "7"
        }
        self.validation()
    }
    
    @IBAction func eightTapped(_ sender: AnyObject) {
        //self.romanOutput.text! = ""
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "8"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "8"
        }
        self.validation()
    }
    
    
    @IBAction func nineTapped(_ sender: AnyObject) {
        //self.romanOutput.text! = ""
        if self.numberInput.text!.contains("Enter") {
            self.numberInput.text! = "9"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "9"
        }
        self.validation()
    }
    
    @IBAction func zeroTapped(_ sender: AnyObject) {
        if self.numberInput.text!.contains("Enter") || self.numberInput.text!.contains("Zero") {
            self.romanOutput.text! = "Zero can not be the first!"
        } else if self.isBigInputNumber {
            return
        } else {
            self.numberInput.text! += "0"
            self.validation()
        }
    }
    
    @IBAction func deleteTapped(_ sender: AnyObject) {
        if !self.numberInput.text!.contains("Enter") && self.numberInput.text!.characters.count == 1 {
            self.numberInput.text! = "Enter number up to 1999"
            self.romanOutput.text! = ""
        } else if !self.numberInput.text!.contains("Enter") && self.numberInput.text!.characters.count > 0 {
            self.numberInput.text! = String(self.numberInput.text!.characters.dropLast())
            self.validation()
        }
    }
    
    @IBAction func clearTapped(_ sender: AnyObject) {
        self.numberInput.text! = "Enter number up to 1999"
        self.romanOutput.text! = ""
    }
    
    
    @IBAction func goBackTapped(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func validation() {
        
        if Int(self.numberInput.text!)! > 2000 {
            self.isBigInputNumber = true
        } else {
            self.isBigInputNumber = false
        }
        
        if self.numberInput.text!.contains("Enter") {
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

