//
//  Solution028.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

import Foundation

class Solution028 : Solution {
    override func logStr() -> String {
        return "028.实现strStr()"
    }
    
    override func example() {
        let haystack:String = "ababababca"
        let needle:String = "abababca"
        print("结果：\(self.strStr(haystack, needle))")
    }
    
//    //暴力匹配
//    func strStr(_ haystack: String, _ needle: String) -> Int {
//        if needle.count == 0 {
//            return 0
//        } else if haystack.count == 0 {
//            return -1
//        } else if needle.count > haystack.count {
//            return -1
//        }
//
//        for i in 0...haystack.count - needle.count {
//            let start = haystack.index(haystack.startIndex, offsetBy: i)
//            let end = haystack.index(start, offsetBy: needle.count)
//            let tempStr = haystack[start..<end]
//            if tempStr == needle {
//                return i
//            }
//        }
//        return -1
//    }
    
    //KMP
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var result:[Int] = []
        
        let pmt = self.getPMT(needle)
        var count:Int = 0
        for index in 0..<haystack.count {
            while count > 0 && needle.getCharStr(index: count) != haystack.getCharStr(index: index) {
                count = pmt[count - 1]
            }
            if needle.getCharStr(index: count) == haystack.getCharStr(index: index) {
                count += 1
            }
            if count == needle.count {
                result.append(index - needle.count + 1)
                count = pmt[count - 1]
            }
        }

        return result.count > 0 ? result[0] : -1
    }
    
    func getPMT(_ needle: String) -> [Int] {
        var pmt:[Int] = [Int](repeating: 0, count: needle.count)
        
        var maxLength:Int = 0
        for i in 1..<needle.count {
            let iStr:String = needle.getCharStr(index: i)
            
            while maxLength > 0 && iStr != needle.getCharStr(index: maxLength) {
                maxLength = pmt[maxLength - 1]
            }
            if iStr == needle.getCharStr(index: maxLength) {
                maxLength += 1
            }
            pmt[i] = maxLength
        }
        
        return pmt
    }
    
    /* abbaaba，PMT表：(Partial Match Table)
     |---------------------------------
     | char：a | b | b | a | a | b | a |
     |index：0 | 1 | 2 | 3 | 4 | 5 | 6 |
     |value：0 | 0 | 0 | 1 | 1 | 2 | 1 |
     |---------------------------------
     
     
             6              6
             |              |
     A abbaabbaaba -> abbaabbaaba
     B abbaaba            abbaaba
             |              |
             6              2
     
     「不匹配发生时，前面匹配的那一小段 abbaab 于我俩是相同的」，A想，「这样的话，用 abbaab 的头部去匹配 abbaab 的尾部，最长的那段就是答案。」
     
     前缀合集：{a, ab, abb, abba, abbaa}
     后缀合集：{b, ab, aab, baab, bbaab}
     两个集合的交集为：{ab}，其中最长的元素为 ab，长度为2。则 B 需要回退到第 2 个字符
      
     */
}

extension String {
    func getCharStr(index:Int) -> String {
        if index >= self.count {
            return ""
        }
        let start = self.index(self.startIndex, offsetBy: index)
        let end = self.index(start, offsetBy: 1)
        return String(self[start..<end])
    }
}
