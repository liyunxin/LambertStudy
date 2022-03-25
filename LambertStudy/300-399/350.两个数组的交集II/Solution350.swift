//
//  Solution350.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution350 : Solution {
    override func logStr() -> String {
        return "350.两个数组的交集II"
    }
    
    override func example() {
        let num1:[Int] = [4, 9, 5, 4]
        let num2:[Int] = [9, 4, 9, 8, 4]
        print("结果1：\(self.intersect(num1, num2))")
    }
    
    //排序 + 双指针
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
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
        
        return sumList
    }
}
