//
//  Solution118.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/16.
//

import Foundation

class Solution118 : Solution {
    override func logStr() -> String {
        return "118.杨辉三角"
    }
    
    override func example() {
        let numRows:Int = 5
        print("结果：\(self.generate(numRows))")
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        var result:[[Int]] = []
        
        for row in 0..<numRows {
            var rows:[Int] = [Int](repeating: 0, count: row + 1)
            
            //首位
            rows[0] = 1
            //末位
            let endCount = row
            if endCount >= 0 {
                rows[endCount] = 1
            }
            
            if row - 1 < 1 {
                result.append(rows)
                continue
            }
            
            for num in 1..<row {
                let lastRowCount = row - 1
                if lastRowCount >= result.count {
                    continue
                }
                let lastRows = result[lastRowCount]
                rows[num] = lastRows[num - 1] + lastRows[num]
            }
            
            result.append(rows)
        }
        return result
    }
}
