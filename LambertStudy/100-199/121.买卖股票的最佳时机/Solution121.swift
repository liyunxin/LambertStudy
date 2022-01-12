//
//  Solution121.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/17.
//

import Foundation

class Solution121 : Solution {
    override func logStr() -> String {
        return "121.买卖股票的最佳时机"
    }
    
    override func example() {
        let prices:[Int] = [7,1,5,3,6,4]
        print("结果：\(prices)，最大利润：\(self.maxProfit(prices))")
    }
    
    func maxProfit(_ prices: [Int]) -> Int {
        var min:Int = prices[0]
        var max:Int = 0
        for index in 1..<prices.count {
            let price = prices[index]
            if price - min > max {
                //记录最大利润
                max = prices[index] - min
            }
            if price < min {
                //找到最低价
                min = price
            }
            print("min = \(min), max = \(max)")
        }
        return max
    }
}
