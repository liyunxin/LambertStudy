//
//  Solution009.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

import Foundation

class Solution009 : Solution {
    override func logStr() -> String {
        return "09.回文数"
    }
    
    override func example() {
        print("结果：\(self.isPalindrome(10001) ? "是" : "否")")
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        return x == Solution007().reverse(x)
    }
}
