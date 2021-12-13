//
//  Solution09.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

import Foundation

class Solution09 : Solution {
    let logStr:String = "09.回文数"
    
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        return x == Solution07().reverse(x)
    }
}

extension Solution09 {
    static func example() {
        let s:Solution09 = Solution09()
        print(s.logStr)
        print("结果：\(s.isPalindrome(10001) ? "是" : "否")")
        s.printLine()
    }
}
