//
//  Solution292.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/24.
//

import Foundation

class Solution292 : Solution {
    override func logStr() -> String {
        return "292.Nim游戏"
    }
    
    override func example() {
        print("结果：\(self.canWinNim(5))")
    }
    
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}
