//
//  Solution303.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution303 : Solution {
    var sums:[Int] = []
    var nums:[Int] = [-2, 0, 3, -5, 2, -1]
    
    override func logStr() -> String {
        return "303.区域和检索-数组不可变"
    }
    
    override func example() {
        self.sums.append(0)
        for i in 0..<self.nums.count {
            self.sums.append(self.sums[i] + self.nums[i])
        }
        print("结果：\(self.sumRange(2, 5))")
    }
    
    /*
       0   1   2   3   4   5
     [-2,  0,  3, -5,  2, -1]
     
       0   1   2   3   4   5   6  前多少个数的和
     [ 0, -2, -2,  1, -4, -2, -3]
     
     0 - 2 = [0] + [1] + [2]
     2 - 5 = [2] + [3] + [4] + [5]
     0 - 5 = [0] + [1] + [2] + [3] + [4] + [5]
     
     */
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        print("\(self.sums)")
        return self.sums[right + 1] - self.sums[left]
    }
}
