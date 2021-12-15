//
//  Solution067.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution067 : Solution {
    override func logStr() -> String {
        return "067.二进制求和"
    }
    
    override func example() {
        let a:String = "1111111"
        let b:String = "1"
        print("结果：\(a) + \(b) = \(self.addBinary(a, b))")
    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        var aList:[Character] = a.reversed()
        var bList:[Character] = b.reversed()
        
        var result:String = ""
        var nextAdd:Bool = false
        while aList.count > 0 || bList.count > 0 {
            let aStr = aList.first
            let bStr = bList.first
            
            var aNum:Int = 0
            var bNum:Int = 0
            var sum:Int = 0
            
            if aStr != nil {
                aNum = Int("\(aStr!)")!
                aList.removeFirst()
            }
            if bStr != nil {
                bNum = Int("\(bStr!)")!
                bList.removeFirst()
            }
            
            sum = aNum + bNum + (nextAdd ? 1 : 0)
            result += "\(sum % 2)"
            
            if sum >= 2 {
                nextAdd = true
            } else {
                nextAdd = false
            }
        }
        
        if nextAdd {
            result += "1"
        }
        
        return String(result.reversed())
    }
}
