//
//  Solution345.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution345 : Solution {
    override func logStr() -> String {
        return "345.反转字符串中的元音字母"
    }
    
    override func example() {
        let s:String = "leetcode"
        print("来啦：\(s)")
        print("结果：\(self.reverseVowels(s))")
    }
    
    func reverseVowels(_ s: String) -> String {
        let vowels:[Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var sList:[Character] = [Character](s)
      
        var lIndex:Int = 0
        var rIndex:Int = sList.count - 1
        
        while lIndex <= rIndex {
            while lIndex < rIndex && vowels.contains(sList[lIndex]) == false {
                lIndex += 1
            }
            
            while rIndex > lIndex && vowels.contains(sList[rIndex]) == false {
                rIndex -= 1
            }
            
            let temp:Character = sList[lIndex]
            sList[lIndex] = sList[rIndex]
            sList[rIndex] = temp
                
            lIndex += 1
            rIndex -= 1
        }
        
        return String(sList)
    }
}
