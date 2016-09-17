//
//  ViewController.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/16/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let roman = NumberConverter()
        print(roman.convertNumberToRomanNumber(234))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

