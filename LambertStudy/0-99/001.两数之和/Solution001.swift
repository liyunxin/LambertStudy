//
//  Solution001.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

class Solution001 : Solution {
    override func logStr() -> String {
        return "001.两数之和"
    }
    
    override func example() {
        let nums = [1, 2, 3, 4, 5]
        let target = 8
        print("结果：\(self.twoSum(nums, target))")
    }
    
    //    //1、穷举法
    //    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //        for (oneIndex, one) in nums.enumerated() {
    //            for twoIndex in (oneIndex + 1)..<nums.count {
    //                let two = nums[twoIndex]
    //                if one + two == target {
    //                    return [oneIndex, twoIndex]
    //                }
    //            }
    //        }
    //        return [];
    //    }
    
    //2、哈希表法
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dics:[Int:Int] = [:]
        for (index, num) in nums.enumerated() {
            let diffValue = target - num
            
            if let key = dics.getKey(forValue: diffValue) {
                let diffIndex = key
                return [diffIndex, index]
            }
            
            dics[index] = num
        }
        
        return []
    }
}

extension Dictionary where Value: Equatable {
    internal func getKey(forValue val: Value) -> Key? {
        for (key, value) in self {
            if value == val {
                return key
            }
        }
        return nil
    }
}
