//
//  Solution234.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/17.
//

import Foundation

class Solution234 : Solution {
    override func logStr() -> String {
        return "234.回文链表"
    }
    
    override func example() {
        let node1 = ListNode.init(1)
        let node2 = ListNode.init(2)
        let node3 = ListNode.init(3)
        let node4 = ListNode.init(2)
        let node5 = ListNode.init(1)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        
        print("结果：\(self.isPalindrome(node1))")
    }
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {
            return false
        }
        var valStr:String = ""
        var node:ListNode? = head
        while node != nil {
            valStr += "\(node?.val ?? 0)"
            node = node?.next
        }
        return String(valStr.reversed()) == valStr
    }
}
