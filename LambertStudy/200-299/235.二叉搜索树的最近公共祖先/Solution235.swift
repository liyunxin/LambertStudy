//
//  Solution235.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/19.
//

import Foundation

class Solution235 : Solution {
    override func logStr() -> String {
        return "235.二叉搜索树的最近公共祖先"
    }
    
    override func example() {
        let node1 = TreeNode.init(1)
        let node2 = TreeNode.init(2)
        let node3 = TreeNode.init(3)
        let node4 = TreeNode.init(4)
        let node5 = TreeNode.init(5)
        let node6 = TreeNode.init(6)
        let node7 = TreeNode.init(7)
        
        node1.left = node2
        node1.right = node3
        
        node2.left = node4
        node2.right = node5
        
        node3.left = node6
        node3.right = node7
        
        print("结果：\(self.lowestCommonAncestor(node1, node4, node7)?.val ?? 0)")
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        return nil
    }
}

