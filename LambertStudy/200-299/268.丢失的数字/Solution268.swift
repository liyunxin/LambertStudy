//
//  Solution268.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/8.
//

import Foundation

class Solution268 : Solution {
    override func logStr() -> String {
        return "268.丢失的数字"
    }
    
    override func example() {
        let nums:[Int] = [1, 0, 2]
        print("结果：\(self.missingNumber(nums))")
    }
    
    func missingNumber(_ nums: [Int]) -> Int {
        var res = nums.count
        for (i, num) in nums.enumerated() {
            res += (i - num)
        }
        return res
    }
}
