//
//  NumberConverter.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/16/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import Foundation

class NumberConverter {
    
    // PUBLIC METHOD // convertation number into Roman string
    func convertNumberToRomanNumber(_ number: Int) -> String {
        let arrayDigits = self.convertNumberToArrayOfDigits(number)
        let convertNumber = self.convertArrayOfDigitsToRomanNumber(arrayDigits)
        return convertNumber
    }
    
    // PUBLIC METHOD // convertation Roman string into number
    func convertRomanNumberToNumber(_ romanNumber: String) -> Int {
        
        // normalise roman string
        let romanString = romanNumber.uppercased()
        
        // roman string validator
        let romanRegularExpression = "^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"
        let romanPredicate = NSPredicate(format: "SELF MATCHES %@", romanRegularExpression)
        
        
        // if input roman string is valid do:
        if romanPredicate.evaluate(with: romanNumber) {
            
            // result
            var number: Int = 0
            // split string into chars
            let romanArray = Array(romanString.characters.reversed())
            
            var isFive = false
            var isTen = false
            var isFifty = false
            var isHundred = false
            var isFiveHundred = false
            var isThousand = false
            
            for char in romanArray {
                
                if char != "I" && char != "V" && char != "X" && char != "L" && char != "C" && char != "D" && char != "M"{
                    print("There is invalid \(char) roman numeral!")
                    return 0
                }
                
                if char == "M" {
                    isThousand = true
                    number += 1000
                }
                
                if char == "D" {
                    isFiveHundred = true
                    number += 500
                }
                
                if char == "C" && isThousand {
                    isThousand = false
                    number -= 100
                } else if char == "C" && isFiveHundred {
                    isFiveHundred = false
                    number -= 100
                } else if char == "C" {
                    isHundred = true
                    number += 100
                }
                
                if char == "L" {
                    isFifty = true
                    number += 50
                }
                
                if char == "X" && isHundred {
                    isHundred = false
                    number -= 10
                } else if char == "X" && isFifty {
                    isFifty = false
                    number -= 10
                } else if char == "X" {
                    isTen = true
                    isFive = false
                    number += 10
                }
                
                if char == "V" {
                    isFive = true
                    //isOne = false
                    number += 5
                }
                
                if char == "I" && isTen {
                    isTen = false
                    number -= 1
                } else if char == "I" && isFive {
                    isFive = false
                    number -= 1
                } else if char == "I" {
                    // isOne = true
                    number += 1
                }
            }
            
            return number
            
        } else {
            // print("Not valid roman string")
            return 9999
        }
    }
    

    // splite number into single digits
    fileprivate func convertNumberToArrayOfDigits(_ number: Int) -> [Int] {
        var num = number
        var result: [Int] = []
        while num > 0 {
            result.append(num % 10)
            num = num / 10;
        }
        return result
    }
    
    // convert each digit of ariginal numer itno Roman style
    fileprivate func convertArrayOfDigitsToRomanNumber(_ arrayDigits: [Int]) -> String {
        var result = ""
        if arrayDigits.count > 3 {
            result += "M"
        }
        
        if arrayDigits.count > 2 {
            let firstDigit = arrayDigits[2]
            let firstResult = self.convertDigitToRoman(firstDigit, letter: ["C", "D", "CM"])
            result += firstResult
        }
        
        if arrayDigits.count > 1 {
            let secondDigit = arrayDigits[1]
            let secondResult = self.convertDigitToRoman(secondDigit, letter: ["X", "L", "XC"])
            result += secondResult
        }
        
        if arrayDigits.count > 0 {
            let thirdDigit = arrayDigits[0]
            let thirdResult = self.convertDigitToRoman(thirdDigit, letter: ["I", "V", "IX"])
            result += thirdResult
        }
        
        return result;
    }
    
    // "drawing" the current digit into Roman style
    fileprivate func convertDigitToRoman(_ digitToConvert: Int, letter: [String]) -> String {
        var digit = digitToConvert
        var result = "";
        if digit == 9 {
            result += letter[2]
        } else if digit < 4 {
            while digit > 0 {
                result += letter[0]
                digit -= 1
            }
        } else {
            result += letter[1]
            if digit < 5 {
                result = letter[0] + result
            } else {
                while (digit > 5) {
                    result += letter[0]
                    digit -= 1
                }
            }
            
        }
        return result;
    }
}
