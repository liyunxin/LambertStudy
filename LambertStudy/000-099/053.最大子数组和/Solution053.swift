//
//  Solution053.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution053 : Solution {
    override func logStr() -> String {
        return "053.最大子数组和"
    }
    
    override func example() {
        let nums:[Int] = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
        print("结果：\(self.maxSubArray(nums))")
    }
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var ans:Int = nums[0]
        var sum:Int = 0
        for num in nums {
            if sum > 0 {
                sum = sum + num
            } else {
                sum = num
            }
            ans = max(ans, sum)
            print("\(num), sum = \(sum), ans = \(ans)")
        }
        return ans
    }
}
