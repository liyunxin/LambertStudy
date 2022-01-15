//
//  Solution231.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/15.
//

import Foundation

class Solution231 : Solution {
    override func logStr() -> String {
        return "231.2的幂"
    }
    
    override func example() {
        let n = 10
        print("n = \(n)")
        print("结果：\(self.isPowerOfTwo(n))")
        print("结果：\(self.isPowerOfTwo2(n))")
    }
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        if n == 1 {
            return true
        }
        var num:CGFloat = CGFloat(n)
        while num > 2 {
            num /= 2
        }
        return num == 2
    }
    

    //n 为 2 的幂，则一定满足以下条件：
    //1、恒有 n & (n - 1) == 0
    //2、一定满足 n > 0。
    func isPowerOfTwo2(_ n: Int) -> Bool {
        return n > 0 && (n & (n - 1)) == 0
    }
}

