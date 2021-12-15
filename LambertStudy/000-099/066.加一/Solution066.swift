//
//  Solution066.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution066 : Solution {
    override func logStr() -> String {
        return "058.最后一个单词的长度"
    }
    
    override func example() {
        let digits:[Int] = [9, 9, 9, 9]
        print("结果：\(digits) + 1 = \(self.plusOne(digits))")
    }
    
    func plusOne(_ digits: [Int]) -> [Int] {
        if (digits.count <= 0) {
            return [1]
        }
        
        var result:[Int] = digits.reversed()
        var nextAdd:Bool = true
        for (index, num) in result.enumerated() {
            if nextAdd {
                if num + 1 > 9 {
                    result[index] = 0
                    nextAdd = true
                } else {
                    result[index] = num + 1
                    nextAdd = false
                }
            }
        }
        if (nextAdd) {
            result.append(1)
        }
        return result.reversed()
    }
}
