//
//  Solution069.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution069 : Solution {
    override func logStr() -> String {
        return "069.算术平方根"
    }
    
    override func example() {
        let a:Int = 4
        print("结果：Sqrt(\(a)) = \(self.mySqrt(a))")
    }
    
    func mySqrt(_ x: Int) -> Int {
        //牛顿迭代法
        if x <= 0 {
            return 0
        }
        return Int(self._mySqrt(Double(x), Double(x)))
    }
    
    func _mySqrt(_ x:Double, _ firstX:Double) -> Double {
        let res:Double = (x + firstX / x) / 2.0
        print("x = \(x), res = \(res)")
        if res == x {
            return x
        } else {
            return self._mySqrt(res, firstX)
        }
    }
}
