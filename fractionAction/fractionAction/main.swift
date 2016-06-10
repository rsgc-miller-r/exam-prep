/*
 RMiller
 
 
Fraction Action
 
 
 Is Kill
 
 */

import Foundation
import Cocoa
import Darwin

// Repeat Variables
var repet0 = 0
var repet1 = 0
// Big number 4 mixed numbers
var bigNum = 0


repeat {

    print("Numerator?")
    var input = readLine(stripNewline: true)
    if let inputString = input {
    
        if (Int(input!) > 0) {
            
            var numer = Int(input!)
            
            repet0 = 1
            
            repeat {
                
                print("Denominator?")
                var input = readLine(stripNewline: true)
                if let inputString = input   {
                    
                    if (Int(input!) > 0) {
                        
                        var denom = Int(input!)
                        
                        print("The result is:")
                        
                        var frac = Float(numer!)/Float(denom!)
                        
                        if (frac % 1 == 0) {
                        
                        print(frac)
                        
                        repet1 = 1
                        
                        } else if (numer < denom) {
                            
                            for i in 1...min(numer!, denom!) {
                                
                                if (numer! % i == 0 && denom! % i == 0) {
                                
                                numer = numer! / i
                                denom = denom! / i
                                    
                                    if (i == denom!) {
                                        
                                    print(Int(numer!),"/",Int(denom!))
                                    repet1 = 1
                                    
                                    }
                                    
                                }
                                
                                

                            }
                            
                            
                            
                            
                        } else {
                            
                            while (numer > denom) {
                                
                                numer! -= denom!
                                
                                bigNum += 1
                                
                            }
                            
                            print(bigNum,"",Int(numer!),"/",Int(denom!))
                            
                            repet1 = 1
                            
                        }
                        
                    }
                    
                }
                
                
                
            } while repet1 == 0
            
            
        }
        
    }
    
    

} while repet0 == 0
