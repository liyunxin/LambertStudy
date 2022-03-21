//
//  Solution283.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/21.
//

import Foundation

class Solution283 : Solution {
    override func logStr() -> String {
        return "283.移动零"
    }
    
    override func example() {
        var list:[Int] = [0, 1, 0, 0, 3, 0, 5, 0]
        //var list:[Int] = [0, 0, 1]
        print("开始：\(list)")
        self.moveZeroes(&list)
        print("结果：\(list)")
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        let n = nums.count
        var left = 0
        var right = 0
        while right < n {
            if nums[right] != 0 {
                let temp = nums[left]
                nums[left] = nums[right]
                nums[right] = temp
                
                print("嘿嘿：\(nums)")
                left += 1
            }
            right += 1
        }
    }
}
