//
//  Solution080.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/14.
//

import Foundation

class Solution080 : Solution {
    override func logStr() -> String {
        return "083.删除排序链表中的重复元素"
    }
    
    override func example() {
//        let nodeList:[ListNode] = [ListNode.init(1), ListNode.init(1),
//                                   ListNode.init(2), ListNode.init(3),
//                                   ListNode.init(3), ListNode.init(4),
//                                   ListNode.init(4), ListNode.init(5),
//                                   ListNode.init(6), ListNode.init(6)]
        let nodeList:[ListNode] = [ListNode.init(1), ListNode.init(1),
                                   ListNode.init(1), ListNode.init(1),
                                   ListNode.init(3), ListNode.init(4),
                                   ListNode.init(4), ListNode.init(5),
                                   ListNode.init(6), ListNode.init(6)]
        for index in 0..<(nodeList.count - 1) {
            nodeList[index].next = nodeList[index + 1]
        }
        print("结果：\(self.deleteDuplicates(nodeList.first)?.getLogStr() ?? "")")
    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let resultNode:ListNode? = head
        
        var tempNode:ListNode? = head
        while tempNode != nil {
            let val = tempNode?.val
            let nextVal = tempNode?.next?.val
            if (val != nextVal) {
                tempNode = tempNode?.next
            } else {
                var nextNode:ListNode? = tempNode?.next?.next
                while nextNode != nil && val == nextNode?.val {
                    nextNode = nextNode?.next
                }
                tempNode?.next = nextNode
            }
        }
        return resultNode
    }
}
