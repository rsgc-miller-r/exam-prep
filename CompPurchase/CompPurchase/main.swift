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
var deBeste = 0
var deBesteName = ""
var secBest = 0
var secBestName = ""

repeat {
    
    var input = readLine(stripNewline: true)
    if let integer = input {
        
        if (Int(integer) > 0 && Int(integer) < 10000) {
            
            var repetGlobal = Int(integer)
            repet0 = 1
            
            while (repetGlobal > 0) {
                
            repet1 = 0
                
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
                            
//                            print(compName)
//                            print(CPU)
//                            print(RAM)
//                            print(HDD)
                            
                            var valyou = 2 * Int(RAM)! + 3 * Int(CPU)! + Int(HDD)!
                            
                            if (valyou > deBeste) {
                                
                                deBeste = valyou
                                deBesteName = compName
                                repetGlobal!-=1
                                
                            } else if (valyou > secBest) {
                                
                                secBest = valyou
                                secBestName = compName
                                repetGlobal!-=1
                                
                            } else {
                                
                                repetGlobal!-=1
                                
                            }
                            
                           repet1 = 1
                            
                        } else {
                            
                            print("INVALID INPUT. ERROR.")
                            exit(0)
                            
                        }
                        
                    }
                    
                    
                }
                
            } while repet1 == 0
            
            }
            
            print(deBesteName)
            print(secBestName)
        
        } else {
            
            print("INVALID INPUT. ERROR.")
            exit(0)
            
        }

    }



} while repet0 == 0



