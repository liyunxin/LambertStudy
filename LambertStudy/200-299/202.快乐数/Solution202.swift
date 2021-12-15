//
//  Solution202.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution202 : Solution {
    override func logStr() -> String {
        return "202.快乐数"
    }
    
    override func example() {
        let n = 10086
        print("结果：\(n), isHappy = \(self.isHappy(n))")
    }
    
    func isHappy(_ n: Int) -> Bool {
        var temp = self._happy(n)
        var result:[Int] = [temp]
        while temp != 1 {
            temp = self._happy(temp)
            if result.contains(temp) {
                return false
            } else {
                result.append(temp)
            }
        }
        return true
    }
    
    func _happy(_ n:Int) -> Int {
        //var log:String = ""
        var result:Int = 0
        var temp:Int = n
        while temp > 0 {
            let num:Int = temp % 10
            result += num * num
            //log += "²\(num) + "
            temp /= 10
        }
        //log = String(log.prefix(log.count - 3).reversed())
        //print("\(log) = \(result)")
        return result
    }
}
