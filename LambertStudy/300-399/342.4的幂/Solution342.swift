//
//  Solution342.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution342 : Solution {
    override func logStr() -> String {
        return "342.4的幂"
    }
    
    override func example() {
        print("结果：\(self.isPowerOfThree(16))")
    }
    
    func isPowerOfThree(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        var num = n
        while (num % 4 == 0) {
            num /= 4
        }
        return num == 1
    }
}
