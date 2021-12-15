//
//  Solution035.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

import Foundation

class Solution035 : Solution {
    override func logStr() -> String {
        return "035.搜索插入位置"
    }
    
    override func example() {
        let nums:[Int] = [1, 3, 5, 6]
        let target:Int = 7
        print("结果：nums = \(nums), target = \(target), searchInsert = \(self.searchInsert(nums, target))")
    }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, num) in nums.enumerated() {
            if num >= target {
                return index
            }
        }
        return nums.count
    }
}
