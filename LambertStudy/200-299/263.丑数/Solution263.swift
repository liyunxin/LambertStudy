//
//  Solution263.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/8.
//
//  质因子（或质因数）在数论里是指能整除给定正整数的质数
//  把只包含质因子2，3和5的数称作丑数
//  可以对 n 反复除以 2, 3, 5 直到 n 不再包含质因数 2, 3, 5。若剩下的数等于 1，则说明 n 不包含其他质因数，是丑数；否则，说明 n 包含其他质因数，不是丑数。

import Foundation

class Solution263 : Solution {
    override func logStr() -> String {
        return "263.丑数"
    }
    
    override func example() {
        let num:Int = 10086
        print("结果：\(self.isUgly(num) ? "是" : "否")")
    }
    
    func isUgly(_ n: Int) -> Bool {
        if (n <= 0) {
            return false
        }
        var num:Int = n
        while num % 5 == 0 {
            num /= 5
        }
        while num % 3 == 0 {
            num /= 3
        }
        while num % 2 == 0 {
            num /= 2
        }
        return num == 1
    }
}

