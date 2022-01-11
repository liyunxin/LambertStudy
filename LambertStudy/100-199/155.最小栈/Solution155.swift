//
//  Solution155.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/13.
//

import Foundation

class Solution155 : Solution {
    override func logStr() -> String {
        return "155.最小栈"
    }
    
    override func example() {
        print("结果：666")
    }
}

class MinStack {
    
    private var _data:[Int] = []
    private var _min:Int = 0

    init() {

    }
    
    func push(_ val: Int) {
        if self._data.count == 0 {
            self._min = val
        } else {
            self._min = min(val, self._min)
        }
        self._data.append(val)
    }
    
    func pop() {
        let top:Int = self.top()
        self._data.removeLast()
        if top > self._min {
            //没影响
        } else {
            //重新找最小值
            self._min = self._data.sorted { a, b in
                return a <= b
            }.first ?? 0
        }
    }
    
    func top() -> Int {
        return self._data.last ?? 0
    }
    
    func getMin() -> Int {
        return self._min
    }
}
