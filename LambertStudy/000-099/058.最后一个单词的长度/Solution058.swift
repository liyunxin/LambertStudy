//
//  Solution058.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution058 : Solution {
    override func logStr() -> String {
        return "058.最后一个单词的长度"
    }
    
    override func example() {
        let s:String = "   fly me   to   the moon  "
        print("结果：\(self.lengthOfLastWord(s))")
    }
    
    func lengthOfLastWord(_ s: String) -> Int {
        if s.count <= 1 {
            return s.count
        }
        
        var length:Int = 0
        for (_, c) in s.enumerated().reversed() {
            let cStr = "\(c)"
            if cStr != " " {
                length += 1
            }
            if cStr == " " && length != 0 {
                return length
            }
        }
        return length
    }
}
