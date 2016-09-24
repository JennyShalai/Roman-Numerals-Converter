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
    @IBOutlet weak var goBackButton: UIButton!
    
    @IBOutlet weak var iButton: UIButton!
    @IBOutlet weak var vButton: UIButton!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var lButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var mButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    let converter = NumberConverter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.setButtonSettings()
    }
    
    fileprivate func setConstraints() {
    
        self.view.removeConstraints(self.view.constraints)
        
        self.wrapperView.removeConstraints(self.wrapperView.constraints)
        self.wrapperView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.wrapperView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.wrapperView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        self.wrapperView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        self.romanInput.removeConstraints(self.romanInput.constraints)
        self.romanInput.translatesAutoresizingMaskIntoConstraints = false
        self.romanInput.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.romanInput.topAnchor.constraint(equalTo: self.wrapperView.topAnchor, constant: 30).isActive = true
        self.romanInput.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.8).isActive = true
        self.romanInput.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.15).isActive = true
        
        self.numberOutput.removeConstraints(self.numberOutput.constraints)
        self.numberOutput.translatesAutoresizingMaskIntoConstraints = false
        self.numberOutput.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.numberOutput.topAnchor.constraint(equalTo: self.romanInput.bottomAnchor, constant: 10).isActive = true
        self.numberOutput.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier: 0.8).isActive = true
        self.numberOutput.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.15).isActive = true
        
        self.wrapperStackView.removeConstraints(self.wrapperStackView.constraints)
        self.wrapperStackView.translatesAutoresizingMaskIntoConstraints = false
        self.wrapperStackView.topAnchor.constraint(equalTo: self.numberOutput.bottomAnchor, constant: 10).isActive = true
        self.wrapperStackView.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.wrapperStackView.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.4).isActive = true
        self.wrapperStackView.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier:  0.8).isActive = true
        
        self.goBackButton.removeConstraints(self.goBackButton.constraints)
        self.goBackButton.translatesAutoresizingMaskIntoConstraints = false
        self.goBackButton.bottomAnchor.constraint(equalTo: self.wrapperView.bottomAnchor, constant: -20).isActive = true
        self.goBackButton.centerXAnchor.constraint(equalTo: self.wrapperView.centerXAnchor).isActive = true
        self.goBackButton.heightAnchor.constraint(equalTo: self.wrapperView.heightAnchor, multiplier: 0.1).isActive = true
        self.goBackButton.widthAnchor.constraint(equalTo: self.wrapperView.widthAnchor, multiplier:  0.5).isActive = true
        

                
    
    }
    
    private func setButtonSettings() {
    
        self.romanInput.text = "Enter roman number"
        self.numberOutput.text = ""
        self.romanInput.adjustsFontSizeToFitWidth = true
        self.numberOutput.adjustsFontSizeToFitWidth = true
        self.setButtonDesign(button: self.iButton)
        self.setButtonDesign(button: self.vButton)
        self.setButtonDesign(button: self.xButton)
        self.setButtonDesign(button: self.cButton)
        self.setButtonDesign(button: self.lButton)
        self.setButtonDesign(button: self.mButton)
        self.setButtonDesign(button: self.dButton)
        self.setButtonDesign(button: self.clearButton)
        self.setButtonDesign(button: self.deleteButton)
    }
    
    private func setButtonDesign(button: UIButton) {
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
    }

    
    @IBAction func iTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "I"
        } else {
            self.romanInput.text! += "I"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func vTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "V"
        } else {
            self.romanInput.text! += "V"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func xTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "X"
        } else {
            self.romanInput.text! += "X"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func lTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "L"
        } else {
            self.romanInput.text! += "L"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func cTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "C"
        } else {
            self.romanInput.text! += "C"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func dTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "D"
        } else {
            self.romanInput.text! += "D"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    @IBAction func mTapped(_ sender: AnyObject) {
        if self.romanInput.text!.contains("Enter") {
            self.romanInput.text! = "M"
        } else {
            self.romanInput.text! += "M"
        }
        self.validToDesable(self.romanInput.text!)
        self.validation()
    }
    
    // delete last char in Roman string
    @IBAction func delTapped(_ sender: AnyObject) {
        if !self.romanInput.text!.contains("Enter") && self.romanInput.text!.characters.count == 1 {
            self.romanInput.text! = "Enter roman number"
            self.numberOutput.text! = ""
            self.validToDesable("")
        } else if !self.romanInput.text!.contains("Enter") && self.romanInput.text!.characters.count > 0 {
            self.romanInput.text! = String(self.romanInput.text!.characters.dropLast())
            self.validToDesable(self.romanInput.text!)
            self.validation()
        }
        
    }
    
    
    
    @IBAction func infoTapped(_ sender: AnyObject) {
        self.romanInput.text! = "Enter roman number"
        self.numberOutput.text! = ""
        self.validToDesable("")
        
    }
    
    @IBAction func goBackTapped(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    fileprivate func validToDesable(_ romanNumber: String) {
        
        let romanRegularExpression = "^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"
        let romanPredicate = NSPredicate(format: "SELF MATCHES %@", romanRegularExpression)
        
        if !romanPredicate.evaluate(with: romanNumber + "I") {
            self.iButton.isEnabled = false
        } else {
            self.iButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "V") {
            self.vButton.isEnabled = false
        } else {
            self.vButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "X") {
            self.xButton.isEnabled = false
        } else {
            self.xButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "L") {
            self.lButton.isEnabled = false
        } else {
            self.lButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "C") {
            self.cButton.isEnabled = false
        } else {
            self.cButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "D") {
            self.dButton.isEnabled = false
        } else {
            self.dButton.isEnabled = true
        }
        
        if !romanPredicate.evaluate(with: romanNumber + "M") {
            self.mButton.isEnabled = false
        } else {
            self.mButton.isEnabled = true
        }
    }
    
    fileprivate func validation() {
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
