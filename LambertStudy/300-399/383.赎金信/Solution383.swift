//
//  Solution383.swift
//  LambertStudy
//
//  Created by Lambert on 2022/5/19.
//

import Foundation

class Solution383 : Solution {
    override func logStr() -> String {
        return "383.赎金信"
    }
    
    override func example() {
        let ransomNote:String = "aa"
        let magazine:String = "aab"
        print("结果：\(self.canConstruct(ransomNote, magazine) ? "可以" : "不可以")")
    }
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if magazine.count < ransomNote.count {
            return false
        }
        
        var unicodeAscllMap:[UInt32:UInt32] = [:]
        magazine.unicodeScalars.forEach { unicodeAscll in
            let unicodeAscllValue = unicodeAscll.value
            unicodeAscllMap[unicodeAscllValue] = (unicodeAscllMap[unicodeAscllValue] ?? 0) + 1
        }
        
        for ransomNoteAscll in ransomNote.unicodeScalars {
            let ransomNoteAscllValue = ransomNoteAscll.value
            print("ransomNoteAscllValue = \(ransomNoteAscllValue)")
            guard let unicodeAscll = unicodeAscllMap[ransomNoteAscllValue], unicodeAscll > 0 else {
                print("1")
                return false
            }
            let remainCount:Int32 = Int32(unicodeAscll - 1)
            print("remainCount = \(remainCount)")
            if remainCount < 0 {
                return false
            }
            unicodeAscllMap[ransomNoteAscllValue] = UInt32(remainCount)
        }
        
        return true
    }
}
