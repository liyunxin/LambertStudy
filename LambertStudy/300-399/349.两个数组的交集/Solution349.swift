//
//  Solution349.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution349 : Solution {
    override func logStr() -> String {
        return "349.两个数组的交集"
    }
    
    override func example() {
        let num1:[Int] = [4, 9, 5]
        let num2:[Int] = [9, 4, 9, 8, 4]
        print("结果1：\(self.intersection(num1, num2))")
        print("结果2：\(self.intersection2(num1, num2))")
    }
    
    //暴力循环法
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var sumList:[Int] = []
        nums1.forEach { num1 in
            if nums2.contains(num1) {
                if sumList.contains(num1) == false {
                    sumList.append(num1)
                }
            }
        }
        return sumList
    }
    
    //排序 + 双指针
    func intersection2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let numList1 = nums1.sorted { return $0 < $1 }
        let numList2 = nums2.sorted { return $0 < $1 }
        var sumList:[Int] = []
        
        var index1:Int = 0
        var index2:Int = 0
        while index1 < numList1.count && index2 < numList2.count {
            let num1 = numList1[index1]
            let num2 = numList2[index2]
            if num1 == num2 {
                sumList.append(num1)
                index1 += 1
                index2 += 1
            } else if num1 < num2 {
                index1 += 1
            } else if num1 > num2 {
                index2 += 1
            }
        }
        
        var uniq = Set<Int>()
        uniq.reserveCapacity(sumList.count)
        return sumList.filter {
            return uniq.insert($0).inserted
        }
    }
}
