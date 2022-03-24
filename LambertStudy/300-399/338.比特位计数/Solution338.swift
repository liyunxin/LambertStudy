//
//  Solution338.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution338 : Solution {
    override func logStr() -> String {
        return "338.比特位计数"
    }
    
    override func example() {
        print("结果：\(self.countBits(5))")
    }
    
    func countBits(_ n: Int) -> [Int] {
        var countBits:[Int] = []
        for var num in 0...n {
            var count:Int = 0
            while num > 0 {
                count += num & 1
                num = num >> 1
            }
            countBits.append(count)
        }
        return countBits
    }
}
