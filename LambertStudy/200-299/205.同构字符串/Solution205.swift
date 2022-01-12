//
//  Solution205.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution205 : Solution {
    override func logStr() -> String {
        return "205.同构字符串"
    }
    
    override func example() {
        let s:String = "foo"
        let t:String = "bar"
        print("结果：\(self.isIsomorphic(s, t))")
    }
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        let sIdList = self._getStrIdList(s)
        let tIdList = self._getStrIdList(t)
        print("sIdList = \(sIdList)")
        print("tIdList = \(tIdList)")
        for index in 0..<sIdList.count {
            if sIdList[index] != tIdList[index] {
                return false
            }
        }
        return true
    }
    
    func _getStrIdList(_ s:String) -> [Int] {
        var idList:[Int] = []
        var idMap:[String:Int] = [:]
        var currentId:Int = 0
        
        for (_, char) in s.enumerated() {
            //当前ID
            let char = String(char)
            
            if let charId = idMap[char] {
                //有缓存
                idList.append(charId)
                continue
            }
            
            //无缓存
            idMap[char] = currentId
            idList.append(currentId)
            currentId += 1
        }
        return idList
    }
}
