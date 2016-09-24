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
    @IBOutlet weak var topTextView: UITextView!
    @IBOutlet weak var bottomTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        self.setButtonDesign()
    }
    
    private func setConstraints() {
        
        self.view.removeConstraints(self.view.constraints)

        // left wrapper view
        self.leftView.removeConstraints(self.leftView.constraints)
        self.leftView.translatesAutoresizingMaskIntoConstraints = false
        self.leftView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.leftView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.leftView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        self.leftView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        
        // right wrapper view
        self.rightView.removeConstraints(self.rightView.constraints)
        self.rightView.translatesAutoresizingMaskIntoConstraints = false
        self.rightView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.rightView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.rightView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        self.rightView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        
        // button "from numbers to roman numerals"
        self.numToRoman.removeConstraints(self.numToRoman.constraints)
        self.numToRoman.translatesAutoresizingMaskIntoConstraints = false
        self.numToRoman.centerXAnchor.constraint(equalTo: self.leftView.centerXAnchor).isActive = true
        self.numToRoman.centerYAnchor.constraint(equalTo: self.leftView.centerYAnchor).isActive = true
        self.numToRoman.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.numToRoman.widthAnchor.constraint(equalTo: self.leftView.widthAnchor, multiplier: 0.9).isActive = true
        
        // buton "from roman numerals to numbers"
        self.romToNumber.removeConstraints(self.romToNumber.constraints)
        self.romToNumber.translatesAutoresizingMaskIntoConstraints = false
        self.romToNumber.centerXAnchor.constraint(equalTo: self.rightView.centerXAnchor).isActive = true
        self.romToNumber.centerYAnchor.constraint(equalTo: self.rightView.centerYAnchor).isActive = true
        self.romToNumber.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.romToNumber.widthAnchor.constraint(equalTo: self.rightView.widthAnchor, multiplier: 0.9).isActive = true
        
        // top text
        self.topTextView.removeConstraints(self.topTextView.constraints)
        self.topTextView.translatesAutoresizingMaskIntoConstraints = false
        self.topTextView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        self.topTextView.bottomAnchor.constraint(equalTo: self.romToNumber.topAnchor, constant: -10).isActive = true
        self.topTextView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.topTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        // bottom text
        self.bottomTextView.removeConstraints(self.bottomTextView.constraints)
        self.bottomTextView.translatesAutoresizingMaskIntoConstraints = false
        self.bottomTextView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        self.bottomTextView.topAnchor.constraint(equalTo: self.romToNumber.bottomAnchor, constant: 10).isActive = true
        self.bottomTextView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        self.bottomTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    private func setButtonDesign() {
        // design for number to roman button
        self.numToRoman.backgroundColor = UIColor.clear
        self.numToRoman.layer.cornerRadius = 5
        self.numToRoman.layer.borderWidth = 1
        self.numToRoman.layer.borderColor = UIColor.gray.cgColor
        
        // design for roman to numbers button
        self.romToNumber.backgroundColor = UIColor.clear
        self.romToNumber.layer.cornerRadius = 5
        self.romToNumber.layer.borderWidth = 1
        self.romToNumber.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func numToRomanButtonTapped(_ sender: AnyObject) {
        let nextViewController = self.storyboard!.instantiateViewController(withIdentifier: "NumberToRomanViewController")
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    
    @IBAction func romToNumberButtonTapped(_ sender: AnyObject) {
        let nextViewController = self.storyboard!.instantiateViewController(withIdentifier: "RomanToNumberViewController")
        self.present(nextViewController, animated:true, completion:nil)
    }
    
}
