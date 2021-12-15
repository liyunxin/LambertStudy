//
//  Solution027.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

/* 027.移除元素
 
 给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素，并返回移除后数组的新长度。

 不要使用额外的数组空间，你必须仅使用 O(1) 额外空间并 原地 修改输入数组。

 元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。
 
 */

import Foundation

class Solution027 : Solution {
    override func logStr() -> String {
        return "027.移除元素"
    }
    
    override func example() {
        var nums:[Int] = [-1, 0, 0, 1, 1, 3, 5, 5, 7, 9]
        let val:Int = 1
        print("结果：\(self.removeElement(&nums, val)), nums = \(nums)")
    }
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var index:Int = 0
        while index < nums.count {
            let num = nums[index]
            if val == num {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}
