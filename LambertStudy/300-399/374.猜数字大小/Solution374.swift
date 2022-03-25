//
//  Solution374.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/25.
//

import Foundation

class Solution374 : Solution {
    override func logStr() -> String {
        return "374.猜数字大小"
    }
    
    override func example() {
        let num:Int = 10
        print("结果：\(num) - \(self.guessNumber(num))")
    }
    
    //二分法
    func guessNumber(_ n: Int) -> Int {
        var left:Int = 0
        var right:Int = n
        while left < right {
            let mid = left + (right - left) / 2
            let result = self.guess(mid)
            if result <= 0 {
                right = mid
            } else {
                left = mid + 1
            }
        }
        return left
    }
    
    func guess(_ num: Int) -> Int {
        if num < 6 {
            return -1
        } else if num > 6 {
            return 1
        }
        return 0
    }
}
