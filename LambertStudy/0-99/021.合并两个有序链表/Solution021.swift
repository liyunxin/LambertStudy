//
//  Solution021.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

/* 021.合并两个有序链表
 
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
 
 1 -> 2 -> 4
 +
 1 -> 3 -> 6
 =
 1 -> 1  -> 2 -> 3 -> 4 -> 6
 
 */

import Foundation

class Solution021 : Solution {
    override func logStr() -> String {
        return "020.有效的括号"
    }
    
    override func example() {
        let node11:ListNode = ListNode.init(-9)
        let node12:ListNode = ListNode.init(3)
        let node13:ListNode = ListNode.init(4)
        
        let node21:ListNode = ListNode.init(1)
        let node22:ListNode = ListNode.init(3)
        let node23:ListNode = ListNode.init(4)
        
        node11.next = node12
        node12.next = node13
        
        node21.next = node22
        node22.next = node23
        
        var newNode:ListNode? = self.mergeTwoLists(node11, node21)
        var logStr:String = "结果："
        while newNode != nil {
            logStr += "\(newNode?.val ?? 0) -> "
            newNode = newNode?.next
        }
        print(logStr)
    }
    
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var listNode:ListNode? = ListNode.init(0)
        let firListNote:ListNode? = listNode
        
        var cL1:ListNode? = list1
        var cL2:ListNode? = list2
        
        while cL1 != nil || cL2 != nil {
            let cL1Val = cL1?.val
            let cL2Val = cL2?.val
            
            var addLeft:Bool = true
            if cL1Val == nil {
                //记录右
                addLeft = false
            } else if cL2Val == nil {
                //记录左
                addLeft = true
            } else if (cL1Val ?? 0) > (cL2Val ?? 0) {
                //记录左
                addLeft = false
            }
            
            if addLeft {
                listNode?.next = cL1
                cL1 = cL1?.next
            } else {
                listNode?.next = cL2
                cL2 = cL2?.next
            }
            listNode = listNode?.next
        }
        
        return firListNote?.next
    }
}
