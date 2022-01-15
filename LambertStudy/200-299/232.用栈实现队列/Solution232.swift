//
//  Solution232.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/15.
//

import Foundation

class Solution232 : Solution {
    override func logStr() -> String {
        return "232.用栈实现队列"
    }
    
    override func example() {
        
    }
}

class MyQueue {
    var firstNode:ListNode? = nil
    var lastNode:ListNode? = nil
    
    func push(_ x: Int) {
        let node:ListNode? = ListNode.init(x)
        if firstNode == nil {
            firstNode = node
        } else {
            if firstNode?.next == nil {
                firstNode?.next = node
                lastNode = node
            } else {
                lastNode?.next = node
                lastNode = node
            }
        }
    }
    
    func pop() -> Int {
        let val = firstNode?.val
        firstNode = firstNode?.next
        return val ?? 0
    }
    
    func peek() -> Int {
        return firstNode?.val ?? 0
    }
    
    func empty() -> Bool {
        return firstNode == nil
    }
}
