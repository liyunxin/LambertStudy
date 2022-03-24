//
//  Solution290.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution290 : Solution {
    override func logStr() -> String {
        return "290.单词规律"
    }
    
    override func example() {
        let pattern:String = "abba"
        let str = "dog dog dog dog"
        print("pattern = \(pattern)")
        print("str = \(str)")
        print("结果：\(self.wordPattern(pattern, str))")
    }
    
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let patterns:[Character] = [Character](pattern)
        let strs:[String] = s.components(separatedBy: " ")
        if patterns.count != strs.count {
            return false
        }
        
        var charKeyMap:[Character:String] = [:]
        for (index, char) in strs.enumerated() {
            let p:Character = patterns[index]
            if let charValue:String = charKeyMap[p] {
                if charValue != char {
                    return false
                }
            } else {
                if charKeyMap.values.contains(char) {
                    return false
                }
                charKeyMap[p] = char
            }
        }
        return true
    }
}
