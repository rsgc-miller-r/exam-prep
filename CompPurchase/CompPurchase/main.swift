/*
 RMiller
 
 
 Computer Purchase
 
 Is Kill
 
 */


import Foundation
import Cocoa
import Darwin

// Repeat Variables
var repet0 = 0
var repet1 = 0

repeat {
    
    var input = readLine(stripNewline: true)
    if let integer = input {
        
        if (Int(integer) > 0 && Int(integer) < 10000) {
            
            var numberInput = Int(integer)
            repet0 = 1
            repet1 = repet1 + numberInput!
            
        } else {
            
            print("INVALID INPUT. ERROR.")
            exit(0)
            
        }

    }

repeat {
    
    var input = readLine(stripNewline: true)
    if let inputString = input {
        
        let inputArray = inputString.componentsSeparatedByString(" ")
       
        if (inputArray.count == 4) {
        var compName: String = inputArray[0]
        var RAM: String = inputArray[1]
        var CPU: String = inputArray[2]
        var HDD: String = inputArray[3]
        
            if (compName.characters.count < 20 && Int(RAM) >= 1 && Int(RAM) <= 128 && Int(CPU) >= 1 && Int(CPU) <= 4000 && Int(HDD) >= 1 && Int(HDD) <= 3000) {
            
                print(compName)
                print(CPU)
                print(RAM)
                print(HDD)
                
                
                repet1 = repet1 - 1
                
            } else {
                
                print("INVALID INPUT. ERROR.")
                exit(0)
                
                }
        
            }
        
        
        }

    } while repet1 > 0

} while repet0 == 0



