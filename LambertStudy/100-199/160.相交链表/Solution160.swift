//
//  Solution160.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/13.
//
//  相交链表
//  A:3
//      4
//  B:2
//
//  相交：
//  A: 3 + 4 + 2
//  B: 2 + 4 + 3
//
//  不相交：
//  A: 3 + 4 + 2 + 4
//  B: 2 + 4 + 3 + 4

import Foundation

class Solution160 : Solution {
    override func logStr() -> String {
        return "160.相交链表"
    }
    
    override func example() {
        let nodeA1 = ListNode.init(4)
        let nodeA2 = ListNode.init(1)
        let nodeA3 = ListNode.init(1)
        
        nodeA1.next = nodeA2
        nodeA2.next = nodeA3
        
        let nodeB1 = ListNode.init(3)
        
        let nodeC1 = ListNode.init(2)
        let nodeC2 = ListNode.init(4)
        
        nodeC1.next = nodeC2
        
        nodeA3.next = nodeC1
        nodeB1.next = nodeC1
        
        if let crossingNode:ListNode = self.getIntersectionNode(nodeA1, nodeB1) {
            print("结果：相交，节点 = \(String(format: "%p", crossingNode))，val = \(crossingNode.val)")
        } else {
            print("结果：不相交")
        }
    }
    
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var nextA:ListNode? = headA
        var nextB:ListNode? = headB
        
        if headA == nil || headB == nil {
            return nil
        }

        while !(nextA === nextB) {
            nextA = nextA == nil ? headB : nextA?.next
            nextB = nextB == nil ? headA : nextB?.next
        }
        return nextA
    }
}
