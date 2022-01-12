//
//  Solution136.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution136 : Solution {
    override func logStr() -> String {
        return "136.只出现一次的数字"
    }
    
    override func example() {
        let nums:[Int] = [4, 1, 2, 1, 2]
        print("结果：\(self.singleNumber(nums))")
    }
    
    //额外空间法
//    func singleNumber(_ nums: [Int]) -> Int {
//        var numMap:[Int:Int] = [:]
//        nums.forEach { num in
//            numMap[num] = (numMap[num] ?? 0) + 1
//        }
//        for (key, value) in numMap {
//            if value == 1 {
//                return key
//            }
//        }
//        return 0
//    }
    
    //异或法：a^a = 0，a^0 = a
    func singleNumber(_ nums: [Int]) -> Int {
        var single:Int = 0
        nums.forEach { num in
            single ^= num
        }
        return single
    }
}
