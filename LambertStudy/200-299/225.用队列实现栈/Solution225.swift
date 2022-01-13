//
//  Solution225.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/13.
//

import Foundation

class Solution225 : Solution {
    override func logStr() -> String {
        return "225.用队列实现栈"
    }
    
    override func example() {
        
    }
}

class MyStack {
    fileprivate var array = [Int]()

    init() {

    }
    
    func push(_ x: Int) {
        self.array.append(x)
    }
    
    func pop() -> Int {
        return self.array.popLast() ?? 0
    }
    
    func top() -> Int {
        return self.array.last ?? 0
    }
    
    func empty() -> Bool {
        return self.array.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
