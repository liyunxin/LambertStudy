//
//  Solution237.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/19.
//

import Foundation

class Solution237 : Solution {
    override func logStr() -> String {
        return "237.删除链表中的节点"
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
        
        print("链表：\(node1.getLogStr())")
        self.deleteNode(node2)
        print("结果：\(node1.getLogStr())")
    }
    
    func deleteNode(_ node: ListNode?) {
        node?.val = node?.next?.val ?? 0
        node?.next = node?.next?.next
    }
}

