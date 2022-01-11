//
//  Solution168.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution168 : Solution {
    override func logStr() -> String {
        return "168.Excel表列名称"
    }
    
    override func example() {
        let columnNumber:Int = 26 * 3
        print("结果：num = \(columnNumber), str = \(self.convertToTitle(columnNumber))")
    }
    
    func convertToTitle(_ columnNumber: Int) -> String {
        var title:String = ""
        
        var number = columnNumber
        while number > 26 {
            if number % 26 == 0 {
                title = self.numberMap[26] ?? ""
                number = (number - 26) / 26
            } else {
                title += self.numberMap[number % 26] ?? ""
                number = number / 26
            }
        }
        title += self.numberMap[number] ?? ""
        return String(title.reversed())
    }
    
    let numberMap:[Int:String] = [1:"A",
                                  2:"B",
                                  3:"C",
                                  4:"D",
                                  5:"E",
                                  6:"F",
                                  7:"G",
                                  8:"H",
                                  9:"I",
                                  10:"J",
                                  11:"K",
                                  12:"L",
                                  13:"M",
                                  14:"N",
                                  15:"O",
                                  16:"P",
                                  17:"Q",
                                  18:"R",
                                  19:"S",
                                  20:"T",
                                  21:"U",
                                  22:"V",
                                  23:"W",
                                  24:"X",
                                  25:"Y",
                                  26:"Z"]
}
