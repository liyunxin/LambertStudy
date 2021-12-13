//
//  Solution026.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

/* 026.删除有序数组中的重复项
 
 给你一个有序数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。

 不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。
 
 */

import Foundation

class Solution026 : Solution {
    override func logStr() -> String {
        return "026.删除有序数组中的重复项"
    }
    
    override func example() {
        var nums:[Int] = [-1, 0, 0, 1, 1, 3, 5, 5, 7, 9]
        print("结果：\(self.removeDuplicates(&nums)), nums = \(nums)")
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var value:Int = nums[0]
        var index:Int = 1
        while index < nums.count {
            let num = nums[index]
            if value == num {
                nums.remove(at: index)
            } else {
                value = num
                index += 1
            }
        }
        return index
    }
}
