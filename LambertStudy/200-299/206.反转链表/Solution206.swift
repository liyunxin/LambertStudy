//
//  Solution206.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution206 : Solution {
    override func logStr() -> String {
        return "206.反转链表"
    }
    
    override func example() {
        let node1 = ListNode.init(1)
        let node2 = ListNode.init(2)
        let node3 = ListNode.init(3)
        let node4 = ListNode.init(4)
        let node5 = ListNode.init(5)
        let node6 = ListNode.init(6)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        node5.next = node6
        
        print("链表：\(node1.getLogStr())")
        print("结果：\(self.reverseList(node1)?.getLogStr() ?? "")")
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        var lastNode:ListNode? = nil
        var node:ListNode? = head
        var nextNode:ListNode? = head
        while nextNode != nil {
            node = nextNode
            nextNode = nextNode?.next
            node?.next = lastNode
            lastNode = node
        }
        return node
    }
}
