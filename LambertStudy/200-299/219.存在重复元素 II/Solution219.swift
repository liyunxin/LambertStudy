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
        let nums:[Int] = [1,2,3,1]
        let k:Int = 3
        print("结果：\(self.containsNearbyDuplicate(nums, k))")
        print("结果：\(self.containsNearbyDuplicate2(nums, k))")
    }
    
    //暴力穷举法 - 时间不理想
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        for i in 0..<(nums.count - 1) {
            let iNum = nums[i]
            for j in (i + 1)..<(min(i + k + 1, nums.count)) {
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
    
    //散列表法
    //遍历数组，对于每个元素做以下操作：
    //在散列表中搜索当前元素，如果找到了就返回 true。
    //在散列表中插入当前元素。
    //如果当前散列表的大小超过了k，删除散列表中最旧的元素。
    func containsNearbyDuplicate2(_ nums: [Int], _ k: Int) -> Bool {
        var set:Set<Int> = Set()
        for (i, num) in nums.enumerated() {
            if set.contains(num) {
                //找到了重复元素
                return true
            }
            //没找到，插入
            set.insert(num)
            
            //超过了阈值，删除最旧的元素
            if set.count > k {
                set.remove(nums[i - k])
            }
        }
        return false
    }
}
