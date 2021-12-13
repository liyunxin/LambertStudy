//
//  Solution020.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

/* 020.有效的括号
 
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串 s ，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。

 */

import Foundation

class Solution020 : Solution {
    override func logStr() -> String {
        return "020.有效的括号"
    }
    
    override func example() {
        let str = "()[]"
        print("结果：\(str)，\(self.isValid(str) ? "有效" : "无效")的括号")
    }
    
    func isValid(_ s: String) -> Bool {
        var bracketStack:Stack<String> = Stack()
        
        for c in s {
            let bracket = "\(c)"
            if self.bracketMap[bracket] != nil {
                //bracket 是左边的括号
                bracketStack.push(bracket)
            } else {
                //bracket 是右边的括号
                guard let leftBracket:String = bracketStack.pop(),
                      let rightBracket:String = self.bracketMap[leftBracket] else {
                    return false
                }
                if bracket != rightBracket {
                    return false
                }
            }
        }
        
        return bracketStack.isEmpty ? true : false
    }
    
    let bracketMap:[String:String] = ["(":")", "{":"}", "[":"]"]
}
