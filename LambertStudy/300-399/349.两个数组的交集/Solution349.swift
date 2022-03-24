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
        let num1:[Int] = [1, 2, 2, 1]
        let num2:[Int] = [2, 2]
        print("结果：\(self.intersection(num1, num2))")
    }
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return [6]
    }
}
