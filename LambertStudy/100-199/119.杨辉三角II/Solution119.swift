//
//  Solution119.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/17.
//

import Foundation

class Solution119 : Solution {
    override func logStr() -> String {
        return "119.杨辉三角II"
    }
    
    override func example() {
        let numRows:Int = 3
        print("结果：\(self.getRow(numRows))")
    }
    
    func getRow(_ rowIndex: Int) -> [Int] {
        return Solution118().generate(rowIndex + 1)[rowIndex]
    }
}
