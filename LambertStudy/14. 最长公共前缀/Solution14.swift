//
//  Solution14.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

import Foundation

class Solution14 : Solution {
    let logStr:String = "14. 最长公共前缀"
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count <= 1 {
            return strs.first ?? ""
        }
        
        var minIndex:Int = strs[0].count
        strs.forEach { str in
            minIndex = min(minIndex, str.count)
        }
        
        var prefix:String = String(strs[0].prefix(1))
        for index in 1..<minIndex {
            let tempPrefix = String(strs[0].prefix(index))
            for str in strs {
                if tempPrefix != String(str.prefix(index)) {
                    return index == 1 ? "" : prefix
                }
            }
            prefix = tempPrefix
        }
        
        return prefix
    }
}

extension Solution14 {
    static func example() {
        let s:Solution14 = Solution14()
        print(s.logStr)
        print("结果：\(s.longestCommonPrefix(["ab", "a", "abc"]))")
        s.printLine()
    }
}
