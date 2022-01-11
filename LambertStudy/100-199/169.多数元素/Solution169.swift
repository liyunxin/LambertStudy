//
//  Solution169.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution169 : Solution {
    override func logStr() -> String {
        return "169.多数元素"
    }
    
    override func example() {
        let numbers:[Int] = [6, 6, 6, 7, 7]
        print("结果：\(self.majorityElement2(numbers))")
    }
    
    //哈希表法
    func majorityElement(_ nums: [Int]) -> Int {
        var numCountMap:[Int:Int] = [:]
        nums.forEach { num in
            let numCount = numCountMap[num] ?? 0
            numCountMap[num] = numCount + 1
        }
        
        var majority = nums.count / 2
        if nums.count % 2 != 0 {
            majority += 1
        }
        for (key, value) in numCountMap {
            if value >= majority {
                return key
            }
        }
        return 0
    }
    
    //排序：如果将数组 nums 中的所有元素按照单调递增或单调递减的顺序排序，那么下标为 n/2 的元素一定是众数。
    func majorityElement2(_ nums: [Int]) -> Int {
        return nums.sorted { a, b in
            return a < b
        }[nums.count / 2]
    }
}
