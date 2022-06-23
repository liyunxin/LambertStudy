//
//  Solution401.swift
//  LambertStudy
//
//  Created by Lambert on 2022/6/21.
//

import Foundation

class Solution401 : Solution {
    override func logStr() -> String {
        return "401. 二进制手表"
    }
    
    override func example() {
        print("结果：\(self.readBinaryWatch(1))")
    }
    
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var res = [String]()
        for h in 0..<12 {
            for m in 0..<60 {
                print("\(h) - \(h.nonzeroBitCount) - \(m) - \(m.nonzeroBitCount)")
                if h.nonzeroBitCount + m.nonzeroBitCount == turnedOn {
                    res.append("\(h)" + ":" + (m < 10 ? "0":"") + "\(m)")
                }
            }
        }
        return res
    }
}
