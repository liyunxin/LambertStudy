//
//  Solution171.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution171 : Solution {
    override func logStr() -> String {
        return "171.Excel 表列序号"
    }
    
    override func example() {
        let title:String = "FXSHRXW"
        print("结果：title = \(title), num = \(self.titleToNumber(title))")
    }
    
    func titleToNumber(_ columnTitle: String) -> Int {
        var number:Int = 0
        for (index, char) in columnTitle.reversed().enumerated() {
            let letter:String = String(char)
            let letterCount:Int = self.letterMap[letter] ?? 0
            let multiple:Int = {
                var multiple:Int = 1
                for _ in 0..<index {
                    multiple *= 26
                }
                return multiple
            }()
            number += letterCount * Int(multiple)
        }
        return number
    }
    
    let letterMap:[String:Int] = ["A":1,
                                  "B":2,
                                  "C":3,
                                  "D":4,
                                  "E":5,
                                  "F":6,
                                  "G":7,
                                  "H":8,
                                  "I":9,
                                  "J":10,
                                  "K":11,
                                  "L":12,
                                  "M":13,
                                  "N":14,
                                  "O":15,
                                  "P":16,
                                  "Q":17,
                                  "R":18,
                                  "S":19,
                                  "T":20,
                                  "U":21,
                                  "V":22,
                                  "W":23,
                                  "X":24,
                                  "Y":25,
                                  "Z":26]
}
