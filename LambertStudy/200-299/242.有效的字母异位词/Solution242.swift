//
//  Solution242.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/20.
//

import Foundation

class Solution242 : Solution {
    override func logStr() -> String {
        return "242.有效的字母异位词"
    }
    
    override func example() {
        let s = "abcdefg"
        let t = "abcdegf"
        print("结果：\(self.isAnagram(s, t))")
    }
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sortS = String(s.sorted { a, b in
            return a < b
        })
        let sortT = String(t.sorted { a, b in
            return a < b
        })
        return sortS == sortT
    }
}

