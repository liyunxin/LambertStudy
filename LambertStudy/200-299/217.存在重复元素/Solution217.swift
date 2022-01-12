//
//  Solution217.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution217 : Solution {
    override func logStr() -> String {
        return "217.存在重复元素"
    }
    
    override func example() {
        let nums:[Int] = [1, 2, 3, 2, 4]
        print("结果：\(self.containsDuplicate(nums))")
    }
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let sortNums = nums.sorted { a, b in
            return a < b
        }
        for index in 0..<(sortNums.count - 1) {
            if sortNums[index] == sortNums[index + 1] {
                return true
            }
        }
        return false
    }
}
