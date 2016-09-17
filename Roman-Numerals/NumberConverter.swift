//
//  NumberConverter.swift
//  Roman-Numerals
//
//  Created by Flatiron School on 9/16/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import Foundation

class NumberConverter {
    // PUBLIC METHOD // convertation number into Roman number
    func convertNumberToRomanNumber(number: Int) -> String {
        let arrayDigits = self.convertNumberToArrayOfDigits(number)
        let convertNumber = self.convertArrayOfDigitsToRomanNumber(arrayDigits)
        return convertNumber
    }
    
    // splite number into single digits
    private func convertNumberToArrayOfDigits(number: Int) -> [Int] {
        var num = number
        var result: [Int] = []
        while num > 0 {
            result.append(num % 10)
            num = num / 10;
        }
        return result
    }
    
    // convert each digit of ariginal numer itno Roman style
    private func convertArrayOfDigitsToRomanNumber(arrayDigits: [Int]) -> String {
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
    private func convertDigitToRoman(digitToConvert: Int, letter: [String]) -> String {
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