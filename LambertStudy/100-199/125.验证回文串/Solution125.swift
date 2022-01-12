//
//  Solution125.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/6.
//

import Foundation

class Solution125 : Solution {
    override func logStr() -> String {
        return "125.验证回文串"
    }
    
    override func example() {
        let s:String = "a."
        print("结果：\(self.isPalindrome(s) ? "是" : "不是")回文串\n\(s)")
    }
    
    func isPalindrome(_ s: String) -> Bool {
        //不考虑大小写
        var str:String = s.lowercased()
        //只考虑字母和数字
        str.removeAll(where: { char in
            return !char.isNumber && !char.isLowercase
        })
        if str.count <= 1 {
            return true
        }
        return str == String(str.reversed())
        
//        let centerIndex:Int = {
//            var centerIndex = str.count / 2
//            if str.count % 2 != 0 { //奇数长度
//                centerIndex -= 1
//            }
//            return centerIndex
//        }()
//        print("centerIndex = \(centerIndex)")
//
//        for index in 0...centerIndex {
//            let sStr = str[str.index(str.startIndex, offsetBy: index)]
//            let lStr = str[str.index(str.endIndex, offsetBy: -1 - index)]
//            if sStr == lStr {
//                continue
//            }
//            return false
//        }
//
//        return true
    }
}
