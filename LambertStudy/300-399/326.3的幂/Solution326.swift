//
//  Solution326.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution326 : Solution {
    override func logStr() -> String {
        return "326.3的幂"
    }
    
    override func example() {
        print("结果：\(self.isPowerOfThree(27))")
    }
    
    func isPowerOfThree(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        var num = n
        while (num % 3 == 0) {
            num /= 3
        }
        return num == 1
    }
}
