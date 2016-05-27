//
//  main.swift
//  SoundsFISHY
//
//  Created by Gorrila 8Ball Ribs on 2016-05-27.
//  Copyright © 2016 Gorrila 8Ball Ribs. All rights reserved.
//

// Sounds Fishy

import Foundation
import Darwin


var repet1 = 0
var repet2 = 0
var repet3 = 0
var repet4 = 0


repeat {

print("Reading 1?", terminator:" ")
var input = readLine(stripNewline: true)
if let depth = input {
    if (Int(depth) > 0) {
        repet1 = 1
        var read1 = Int(depth)
        
        repeat {
            
            print("Reading 2?", terminator:" ")
            var input2 = readLine(stripNewline: true)
            if let depth2 = input2 {
                if (Int(depth2) > 0) {
                    repet2 = 1
                    var read2 = Int(depth2)
                    
                    repeat {
                        
                        print("Reading 3?", terminator:" ")
                        var input3 = readLine(stripNewline: true)
                        if let depth3 = input3 {
                            if (Int(depth3) > 0) {
                                repet3 = 1
                                var read3 = Int(depth3)
                                
                                repeat {
                                    
                                    print("Reading 4?", terminator:" ")
                                    var input4 = readLine(stripNewline: true)
                                    if let depth4 = input4 {
                                        if (Int(depth4) > 0) {
                                            repet4 = 1
                                            var read4 = Int(depth4)
                                            if (read1 < read2 && read2 < read3 && read3 < read4) {
                                                print("Fish Rising")
                                            } else if (read1 > read2 && read2 > read3 && read3 > read4) {
                                                print("Fish Diving")
                                            } else if (read1 == read2 && read2 == read3 && read3 == read4) {
                                                print("Fish at Constant Depth")
                                            } else {
                                                print("No Fish")
                                            }
                                        }
                                    }
                                } while repet4 == 0
                            }
                        }
                    } while repet3 == 0
                }
            }
        } while repet2 == 0
    }
}
} while repet1 == 0


