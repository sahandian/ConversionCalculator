//
//  Model.swift
//  ConversionCalculator
//
//  Created by sahand sadri on 10/12/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import Foundation
//
//  Model.swift
//  ConversionCalculator
//
//  Created by sahand sadri on 10/12/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import Foundation

enum SpeedConvertFrom: String{
    case mph
    case kmph
}
enum SpeedConvertTo: String{
    case mph
    case kmph
}

enum LengthConvertFrom: String{
    case meter
    case kilometer
    case feet
    case mile
    case yard
    case inch
    case centimeter
}

enum LengthConvertTo: String{
    case meter
    case kilometer
    case feet
    case mile
    case yard
    case inch
    case centimeter
}

class ConversionCalculator{
    var inputValueString = ""
    var convertedAmount: Double = 0.0
    
    
    
    
    init(inputValueString: String, convertedAmount: Double){
        self.inputValueString = inputValueString
        self.convertedAmount = convertedAmount
    }
    
    var input: Double{
        return Double(inputValueString) ?? 0.0
    }
    
    func append(digit: Int){
        inputValueString += String(digit)
    }
    
    func appendDecimal() {
        
        guard !inputValueString.contains(".") else { return }
        
        if inputValueString.isEmpty {
            inputValueString += "0."
        }else{
            inputValueString += "."
        }
    }
    
    func clearInput(){
        inputValueString = ""
    }
    
    func calculateSpeed(speedFrom: SpeedConvertFrom, speedTo: SpeedConvertTo) -> Double{
        if(speedFrom == .mph){
            if(speedTo == .kmph){
                return input * 160934
            }
            if(speedTo == .mph){
                return input
            }
        } else if(speedFrom == .kmph){
            if(speedTo == .mph){
                return input / 1.60934
            }
            if(speedTo == .kmph){
                return input
            }
        }
        return input
    }
    
    func calculateLength( lengthFrom: LengthConvertFrom, lengthTo: LengthConvertTo) -> Double{
        if(lengthFrom == .feet){
            if(lengthTo == .yard){
                return input * 3
            }
            if(lengthTo == .mile){
                return input * 5280
            }
            if(lengthTo == .meter){
                return input * 0.3048
            }
            if(lengthTo == .kilometer){
                return input
            }
        }
        return input*2 +12
        
    }
}
