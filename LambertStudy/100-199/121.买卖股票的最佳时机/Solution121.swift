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
        var sum:Int = 0
        var day:Int = 0
        while day < prices.count {
            let price:Int = prices[day]
            sum += price
            print("\(day) - \(price) - \(sum)")
            day += 1
        }
        
        return 666
    }
}
