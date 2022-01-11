//
//  Solution167.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution167 : Solution {
    override func logStr() -> String {
        return "167.两数之和 II - 输入有序数组"
    }
    
    override func example() {
        let numbers:[Int] = [2, 7, 11, 15]
        let target:Int = 9
        print("结果：\(self.twoSum(numbers, target))")
    }
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        if numbers.count < 2 {
            return []
        }
        
        var starIndex:Int = 0
        var endIndex:Int = numbers.count - 1
        
        while starIndex != endIndex {
            let sum = numbers[starIndex] + numbers[endIndex]
            if sum == target {
                return [starIndex + 1, endIndex + 1]
            }
            if sum < target {
                starIndex += 1
            }
            if sum > target {
                endIndex -= 1
            }
        }
        
        return []
    }
}
