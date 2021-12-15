//
//  Solution070.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution070 : Solution {
    override func logStr() -> String {
        return "070.爬楼梯"
    }
    
    override func example() {
        let n:Int = 3
        print("结果：\(n), climbStairs = \(self.climbStairs(n))")
    }
    
    func climbStairs(_ n: Int) -> Int {
        /*
         标签：动态规划
         本问题其实常规解法可以分成多个子问题，爬第n阶楼梯的方法数量，等于 2 部分之和
         爬上 n−1 阶楼梯的方法数量。因为再爬1阶就能到第n阶
         爬上 n−2 阶楼梯的方法数量，因为再爬2阶就能到第n阶
         */
        if n <= 2 {
            return n
        }
        
        var climbStairsList:[Int] = []
        climbStairsList.append(1)
        climbStairsList.append(2)
        
        for index in 2..<n {
            climbStairsList.append(climbStairsList[index - 1] + climbStairsList[index - 2])
        }
        
        return climbStairsList[n - 1]
    }
}
