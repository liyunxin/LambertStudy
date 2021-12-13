//
//  Solution13.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

import Foundation

class Solution13 : Solution {
    let logStr:String = "13. 罗马数字转整数"
    
    let romanIntMap:[String:Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000,
    ]
    
    func romanToInt(_ s: String) -> Int {
        var result:Int = 0
        var lastValue:Int = 0
        for char in s {
            let value:Int = self.romanIntMap["\(char)"] ?? 0
            if value > lastValue && lastValue > 0 {
                result = result + (value - lastValue) - lastValue
            } else {
                result += value
            }
            lastValue = value
        }
        return result
    }
}

extension Solution13 {
    static func example() {
        let s:Solution13 = Solution13()
        print(s.logStr)
        let romanNum:String = "LVIII"
        print("结果：\(romanNum) -> \(s.romanToInt(romanNum))")
        s.printLine()
    }
}
