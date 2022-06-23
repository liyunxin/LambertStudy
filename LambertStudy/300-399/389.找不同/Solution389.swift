//
//  Solution389.swift
//  LambertStudy
//
//  Created by Lambert on 2022/6/23.
//

class Solution389 : Solution {
    override func logStr() -> String {
        return "389.找不同"
    }
    
    override func example() {
        print("结果：\(self.findTheDifference("ae", "aea"))")
    }
    
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sAscillValue:UInt32 = 0
        s.forEach { char in
            sAscillValue += UInt32(char.asciiValue ?? 0)
        }
        
        var tAscillValue:UInt32 = 0
        t.forEach { char in
            tAscillValue += UInt32(char.asciiValue ?? 0)
        }
        
        return Character(UnicodeScalar(UInt8(tAscillValue - sAscillValue)))
    }
}
