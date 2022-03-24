//
//  Solution344.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution344 : Solution {
    override func logStr() -> String {
        return "344.反转字符串"
    }
    
    override func example() {
        var s:[Character] = [Character]("hello")
        print("来啦：\(s)")
        self.reverseString(&s)
        print("结果：\(s)")
    }
    
    func reverseString(_ s: inout [Character]) {
        for index in 0..<s.count/2 {
            let temp = s[index]
            let lastIndex = s.count - index - 1
            s[index] = s[lastIndex]
            s[lastIndex] = temp
        }
    }
}
