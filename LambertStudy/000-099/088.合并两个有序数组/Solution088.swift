//
//  Solution088.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution088 : Solution {
    override func logStr() -> String {
        return "088.合并两个有序数组"
    }
    
    override func example() {
        var nums1:[Int] = [1, 3, 4, 7, 9]
        let nums2:[Int] = [2, 3, 5, 6]
        print("结果：")
        print("nums1 = \(nums1)")
        print("nums2 = \(nums2)")
        nums2.forEach { _ in
            nums1.append(0)
        }
        self.merge(&nums1, nums1.count - nums2.count, nums2, nums2.count)
        print("合并后 = \(nums1)")
    }
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        //合并
        for i in 0..<n {
            nums1[m + i] = nums2[i]
        }
        //排序（冒泡）
        for i in 0..<(nums1.count - 1) {
            for j in 0..<(nums1.count - 1 - i) {
                if nums1[j] > nums1[j + 1] {
                    let temp:Int = nums1[j]
                    nums1[j] = nums1[j + 1]
                    nums1[j + 1] = temp
                }
            }

        }
    }
}
