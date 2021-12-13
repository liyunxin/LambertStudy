//
//  Solution07.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/10.
//

import Foundation

class Solution07 : Solution {
    let logStr:String = "07.整数反转"
    
    func reverse(_ x: Int) -> Int {
        var value:Int = x
        var result:Int = 0
        
        while (value != 0) {
            result *= 10
            result += value % 10
            if result > Int32.max || result < Int32.min {
                //在反转过程中得到的值可能会越界，所以每次处理都要判断
                return 0
            }
            value = value / 10
        }
        
        return result
    }
}

extension Solution07 {
    static func example() {
        let s:Solution07 = Solution07()
        print(s.logStr)
        let value = 1534236469
        print("结果：\(s.reverse(value))")
        s.printLine()
    }
}
