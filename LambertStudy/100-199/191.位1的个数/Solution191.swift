//
//  Solution191.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution191 : Solution {
    override func logStr() -> String {
        return "191.位1的个数"
    }
    
    override func example() {
        print("结果：\(self.hammingWeight(0b11111111111111111111111111111101))")
    }
    
    //对最低位进行 与运算，然后不停的右移。
    func hammingWeight(_ n: Int) -> Int {
        var num = n
        var count = 0
                 
        while num != 0 {
            if num&1 == 1 {
                count+=1
            }
            num = num>>1
        }
        
        return count
    }
}
