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

enum TempConvertTo: String {
    case fheit
    case celsius
}

enum TempConvertFrom: String {
    case fheit
    case celsius
}

enum WeightConvertFrom: String {
    case kilograms
    case pounds
}

enum WeightConvertTo: String {
    case kilograms
    case pounds
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
                return input * .000189394
            }
            if(lengthTo == .meter){
                return input * 0.3048
            }
            if(lengthTo == .kilometer){
                return input * 0.0003048
            }
            if(lengthTo == .centimeter){
                return input * 30.48
            }
            if(lengthTo == .inch){
                return input * 12
            }
            
        }
        
        if(lengthFrom == .yard){
            if(lengthTo == .feet){
                return input * 3
            }
            if(lengthTo == .mile){
                return (input * 0.000189394)*3
            }
            if(lengthTo == .meter){
                return (input * 0.3048)*3
            }
            if(lengthTo == .kilometer){
                return (input * 0.0003048)*3
            }
            if(lengthTo == .centimeter){
                return (input *30.48)*3
            }
            if(lengthTo == .inch){
                return (input * 12)*3
            }
            
        }
        
        if(lengthFrom == .inch){
            if(lengthTo == .yard){
                return input * 0.0277778
            }
            if(lengthTo == .mile){
                return (input * .000189394) / 12
            }
            if(lengthTo == .meter){
                return (input * 0.3048) / 12
            }
            if(lengthTo == .kilometer){
                return (input * 0.0003048) / 12
            }
            if(lengthTo == .centimeter){
                return (input *30.48) / 12
            }
            if(lengthTo == .feet){
                return (input / 12)
            }
            
        }
        if(lengthFrom == .centimeter){
            if(lengthTo == .yard){
                return input * 0.0109361
            }
            if(lengthTo == .mile){
                return (input * .00000621371)
            }
            if(lengthTo == .meter){
                return (input * 0.01
            }
            if(lengthTo == .kilometer){
                return (input * 0.00001)
            }
            if(lengthTo == .inch){
                return (input * .393701
            }
            if(lengthTo == .feet){
                return 0.0328084
            }
            
        }
        
        if(lengthFrom == .meter){
            if(lengthTo == .yard){
                return input * 1.09361
            }
            if(lengthTo == .mile){
                return (input * 0.000621371)
            }
            if(lengthTo == .centimeter){
                return (input * 100
            }
            if(lengthTo == .kilometer){
                return (input * 0.001)
            }
            if(lengthTo == .inch){
                return (input * 39.3701
            }
            if(lengthTo == .feet){
                return 3.28084
            }
            
        }
        if(lengthFrom == .kilometer){
            if(lengthTo == .yard){
                return input * 1093.61
            }
            if(lengthTo == .mile){
                return (input * 6.21371)
            }
            if(lengthTo == .centimeter){
                return (input * 100000
            }
            if(lengthTo == .meter){
                return (input * 1000)
            }
            if(lengthTo == .inch){
                return (input * 39370.1
            }
            if(lengthTo == .feet){
                return 3280.84
            }
            
        }
        
        
        
        return input
        
    }
    
    func calculateWeight(weightFrom: WeightConvertFrom, weightTo: WeightConvertTo) -> Double {
        if (weightFrom == .pounds) {
            if(weightTo == .kilograms) {
                return input * 0.453592
            }
            
            if (weightTo == .pounds){
                return input
            }
        } else if (weightFrom == .kilograms){
            if(weightTo == .pounds){
                return input / 0.453592
            }
            if(weightTo == .kilograms){
                return input
            }
        }
        return input
    }
    
    func calculateTemp(tempFrom: TempConvertFrom, tempTo: TempConvertTo) -> Double {
        if (tempFrom == .fheit) {
            if(tempTo == .celsius) {
                return ((input*1.8)+32)
            }
            
            if (tempTo == .fheit){
                return input
            }
        } else if (tempFrom == .celsius){
            if(tempTo == .fheit){
                return (input-32)/(1.8)
            }
            if(tempTo == .celsius){
                return input
            }
        }
        return input
    }

}
