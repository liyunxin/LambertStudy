//
//  Solution387.swift
//  LambertStudy
//
//  Created by Lambert on 2022/5/20.
//
//  给定一个字符串 s ，找到 它的第一个不重复的字符，并返回它的索引 。如果不存在，则返回 -1 。

import Foundation

class Solution387 : Solution {
    override func logStr() -> String {
        return "387.字符串中的第一个唯一字符"
    }
    
    override func example() {
        let s:String = "aabb"
        print("结果：\(self.firstUniqChar(s))")
    }
    
    func firstUniqChar(_ s: String) -> Int {
        var charCountMap:[String.Element:Int] = [:]
        for char in s {
            let charCount:Int = charCountMap[char] ?? 0
            charCountMap[char] = charCount + 1
        }
        charCountMap = charCountMap.filter { (key: String.Element, value: Int) in
            return value == 1
        }
        for (index, char) in s.enumerated() {
            let charCount:Int = charCountMap[char] ?? 0
            if charCount > 0 {
                return index
            }
        }
        return -1
    }
}
