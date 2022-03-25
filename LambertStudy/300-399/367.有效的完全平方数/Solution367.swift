//
//  Solution367.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/25.
//

import Foundation

class Solution367 : Solution {
    override func logStr() -> String {
        return "367.有效的完全平方数"
    }
    
    override func example() {
        let num:Int = 666
        print("结果：\(num) - \(self.isPerfectSquare(num))")
    }
    
    //二分法
    func isPerfectSquare(_ num: Int) -> Bool {
        var left:Int = 0
        var right:Int = num / 2 + 1
        while left <= right {
            let mid = left + (right - left) / 2
            let mid2 = mid * mid
            if mid2 > num {
                right = mid - 1
            } else if mid2 < num {
                left = mid + 1
            } else {
                return true
            }
        }
        return false
    }
}
