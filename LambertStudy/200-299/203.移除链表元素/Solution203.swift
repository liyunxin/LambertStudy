//
//  Solution203.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution203 : Solution {
    override func logStr() -> String {
        return "203.移除链表元素"
    }
    
    override func example() {
        let node1 = ListNode.init(1)
        let node2 = ListNode.init(2)
        let node3 = ListNode.init(2)
        let node4 = ListNode.init(2)
        let node5 = ListNode.init(2)
        let node6 = ListNode.init(2)
        let node7 = ListNode.init(2)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        node5.next = node6
        node6.next = node7
        
        print("链表：\(node1.getLogStr())")
        print("结果：\(self.removeElements(node1, 2)?.getLogStr() ?? "")")
    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var first:ListNode? = head
        while first?.val == val {
            first = first?.next
        }
        var node:ListNode? = first
        while node != nil {
            while node?.next?.val == val {
                node?.next = node?.next?.next
            }
            node = node?.next
        }
        return first
    }
}
