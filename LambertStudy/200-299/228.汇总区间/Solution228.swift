//
//  Solution228.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/14.
//

import Foundation

class Solution228 : Solution {
    override func logStr() -> String {
        return "228.汇总区间"
    }
    
    override func example() {
        let nums = [0, 1, 2, 4, 6, 7]
        print("nums = \(nums)")
        print("结果：\(self.summaryRanges(nums))")
    }
    
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.count <= 0 {
            return []
        }
        if nums.count <= 1 {
            return ["\(nums.first ?? 0)"]
        }
        
        var result:[String] = []
        var index:Int = nums[0]
        var index2:Int = index
        for i in 1..<nums.count {
            let num:Int = nums[i]
            if index2 + 1 == num {
                index2 = num
                continue
            }
            if index == index2 {
                result.append("\(index)")
            } else {
                result.append("\(index)->\(index2)")
            }
            index = num
            index2 = index
        }
        if index == index2 {
            result.append("\(index)")
        } else {
            result.append("\(index)->\(index2)")
        }
        return result
    }
}

//func iAmVeryRich() {
//    let beginMoney:CGFloat = 4000
//    let prizeUnit:CGFloat = 1500
//    let playOnceGameMoney:CGFloat = 2000
//    let playGamePersonCount:Int = 5
//
//    var richMeProbability:CGFloat = 1.0
//    for i in 1..<(playGamePersonCount + 1) {
//        var prizeProbability:CGFloat = 1.0
//        var prizePoolMoney:CGFloat = beginMoney
//        for round in 1..<(playGamePersonCount + 1) {
//            let probability:CGFloat = prizeUnit / prizePoolMoney
//            let prizeStr:String = "\(String(format:"%.0f", prizeUnit))/\(String(format:"%.0f", prizePoolMoney))=\(String(format:"%.3f", probability))"
//            print("第\(round)轮，本轮中奖概率：\(prizeStr)，前面不中概率：\(String(format:"%.3f", prizeProbability))")
//            if i == round {
//                prizeProbability *= probability
//            } else {
//                prizeProbability *= (1 - probability)
//            }
//            prizePoolMoney += playOnceGameMoney
//            if i == round {
//                print("第\(round)轮，中奖了！概率：\(String(format:"%.3f", prizeProbability))")
//                richMeProbability -= prizeProbability
//                break
//            }
//        }
//        print("-------------------------------------------------------")
//        if i == playGamePersonCount {
//            //没有人中，回本
//            let richMe:CGFloat = (prizePoolMoney - playOnceGameMoney) / 2
//            print("没人中奖，概率：\(String(format:"%.3f", richMeProbability))，回本金额：(\(String(format:"%.0f", prizePoolMoney)) - \(String(format:"%.0f", playOnceGameMoney))) / 2 = \(String(format:"%.0f", richMe))")
//        }
//    }
//}
