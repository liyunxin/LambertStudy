//
//  Solution278.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/21.
//

import Foundation

class Solution278 : Solution {
    override func logStr() -> String {
        return "278.第一个错误的版本"
    }
    
    override func example() {
        print("结果：\(self.firstBadVersion(8))")
    }
    
    func firstBadVersion(_ n: Int) -> Int {
        var left:Int = 1
        var right:Int = n
        while left < right {
            let mid:Int = left + (right - left) / 2
            if self.isBadVersion(mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        return left
    }
    
    func isBadVersion(_ version: Int) -> Bool {
        return version >= 4
    }
}
