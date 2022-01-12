//
//  Solution219.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution219 : Solution {
    override func logStr() -> String {
        return "219.存在重复元素 II"
    }
    
    override func example() {
        let nums:[Int] = [1,2,3,1,2,3]
        let k:Int = 2
        print("结果：\(self.containsNearbyDuplicate(nums, k))")
    }
    
    //暴力穷举法 - 超时
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        for i in 0..<(nums.count - 1) {
            let iNum = nums[i]
            for j in (i + 1)..<nums.count {
                let jNum = nums[j]
                if iNum == jNum {
                    if j - i <= k {
                        return true
                    }
                }
            }
        }
        return false
    }
}
