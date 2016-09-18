//
//  ViewController.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/16/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var romanResult: UILabel!
    @IBOutlet weak var minNumber: UILabel!
    @IBOutlet weak var maxNumber: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValue: UILabel!
    
    let converter = NumberConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.orientationChanged), name: UIDeviceOrientationDidChangeNotification, object: nil)
        self.setConstraints()
        self.romanResult.text = "D"
        
        
       // let testOutput1 = converter.convertRomanNumberToNumber("DCCCLXXXVIII")
        let testOutput2 = converter.convertRomanNumberToNumber("CMLxXDV")
//        let testOutput3 = converter.convertRomanNumberToNumber("XLIV")
//        let testOutput4 = converter.convertRomanNumberToNumber("L")
//        let testOutput5 = converter.convertRomanNumberToNumber("LIII")
//        let testOutput6 = converter.convertRomanNumberToNumber("LIX")
//        let testOutput7 = converter.convertRomanNumberToNumber("LXXIII")
//        let testOutput8 = converter.convertRomanNumberToNumber("LXXX")
//        let testOutput9 = converter.convertRomanNumberToNumber("XIX")
//        let testOutput10 = converter.convertRomanNumberToNumber("XX")
//        let testOutput11 = converter.convertRomanNumberToNumber("XXI")
//        let testOutput14 = converter.convertRomanNumberToNumber("XXIV")
//        let testOutput16 = converter.convertRomanNumberToNumber("XXVI")
      //  print(testOutput1)
        print(testOutput2)
//        print(testOutput3)
//        print(testOutput4)
//        print(testOutput5)
//        print(testOutput6)
//        print(testOutput7)
//        print(testOutput8)
//        print(testOutput9)
//        print(testOutput10)
//        print(testOutput11)
//        print(testOutput14)
//        print(testOutput16)
        
        
    }
    
    @IBAction func sliderValueChanged(sender: AnyObject) {
        self.romanResult.text = self.converter.convertNumberToRomanNumber(Int(self.slider.value))
        self.sliderValue.text = "\(Int(self.slider.value))"
    }
    
//    @IBAction func sliderValueSet(sender: AnyObject) {
//        self.romanResult.text = self.converter.convertNumberToRomanNumber(Int(self.slider.value))
//    }
    
    func orientationChanged() {
        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation)) {
            
        }
        
        
        
    }

    func setConstraints() {
        self.view.removeConstraints(self.view.constraints)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        // set slider constraints
        self.slider.removeConstraints(self.slider.constraints)
        self.slider.translatesAutoresizingMaskIntoConstraints = false
        self.slider.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        self.slider.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        self.slider.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.9).active = true
        self.slider.heightAnchor.constraintEqualToConstant(31).active = true
        
        // set labels constraints
        self.minNumber.removeConstraints(self.minNumber.constraints)
        self.minNumber.translatesAutoresizingMaskIntoConstraints = false
        self.minNumber.bottomAnchor.constraintEqualToAnchor(self.slider.topAnchor, constant: -10).active = true
        self.minNumber.leftAnchor.constraintEqualToAnchor(self.slider.leftAnchor).active = true
        self.minNumber.widthAnchor.constraintEqualToConstant(50).active = true
        self.minNumber.heightAnchor.constraintEqualToConstant(20).active = true
        
        self.maxNumber.removeConstraints(self.maxNumber.constraints)
        self.maxNumber.translatesAutoresizingMaskIntoConstraints = false
        self.maxNumber.bottomAnchor.constraintEqualToAnchor(self.slider.topAnchor, constant: -10).active = true
        self.maxNumber.rightAnchor.constraintEqualToAnchor(self.slider.rightAnchor).active = true
        self.maxNumber.widthAnchor.constraintEqualToConstant(50).active = true
        self.maxNumber.heightAnchor.constraintEqualToConstant(20).active = true
        
        // set result label
        self.romanResult.removeConstraints(self.romanResult.constraints)
        self.romanResult.translatesAutoresizingMaskIntoConstraints = false
        self.romanResult.bottomAnchor.constraintEqualToAnchor(self.slider.topAnchor, constant: -50).active = true
        self.romanResult.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        self.romanResult.heightAnchor.constraintEqualToConstant(100).active = true
        self.romanResult.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.95).active = true
        
        // set sliderValue label
        self.sliderValue.removeConstraints(self.sliderValue.constraints)
        self.sliderValue.translatesAutoresizingMaskIntoConstraints = false
        self.sliderValue.topAnchor.constraintEqualToAnchor(self.slider.bottomAnchor, constant: 50).active = true
        self.sliderValue.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        self.sliderValue.heightAnchor.constraintEqualToConstant(100).active = true
        self.sliderValue.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.95).active = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

