//
//  ListNode.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    func getLogStr() -> String {
        var logStr:String = ""
        var newNode:ListNode? = self
        while newNode != nil {
            logStr += "\(newNode?.val ?? 0) -> "
            newNode = newNode?.next
        }
        return String(logStr.prefix(logStr.count - 4))
    }
}
