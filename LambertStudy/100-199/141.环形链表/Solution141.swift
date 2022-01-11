//
//  Solution141.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/10.
//

import Foundation

class Solution141 : Solution {
    override func logStr() -> String {
        return "141.环形链表"
    }
    
    override func example() {
        let head:[Int] = [3, 2, 0, -4]
        let pos:Int = 1
        let node:ListNode? = self.createNodeList(head: head, pos: pos)
        print("结果：\(self.hasCycle(node))")
    }
    
    func createNodeList(head:[Int], pos:Int) -> ListNode? {
        if head.count <= 0 {
            return nil
        }
        var firstNode:ListNode? = nil
        var tempNode:ListNode? = nil
        var cycleNode:ListNode? = nil
        for index in 0..<head.count {
            let val = head[index]
            let indexNode:ListNode = ListNode.init(val)
            if index == 0 {
                firstNode = indexNode
            } else {
                tempNode?.next = indexNode
            }
            if pos == index {
                cycleNode = indexNode
            }
            tempNode = indexNode
        }
        tempNode?.next = cycleNode
        return firstNode
    }
    
    func hasCycle(_ head: ListNode?) -> Bool {
        var oneP:ListNode? = head?.next
        var twoP:ListNode? = head?.next?.next
        
        while oneP != nil && twoP != nil {
            oneP = oneP?.next
            twoP = twoP?.next?.next
            if oneP === twoP {
                return true
            }
        }
        return false
    }
}
