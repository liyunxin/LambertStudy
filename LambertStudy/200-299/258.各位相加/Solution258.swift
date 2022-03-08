//
//  Solution258.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/8.
//

import Foundation

class Solution258 : Solution {
    override func logStr() -> String {
        return "258.各位相加"
    }
    
    override func example() {
        let num:Int = 10086
        print("结果：\(self.addDigits(num))")
    }
    
    func addDigits(_ num: Int) -> Int {
        var result:Int = num
        var sum:Int = 0
        while result > 0 {
            sum += result % 10
            result = result / 10
        }
        if sum >= 10 {
            return self.addDigits(sum)
        }
        return sum
    }
}
