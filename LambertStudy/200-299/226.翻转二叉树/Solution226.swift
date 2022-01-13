//
//  Solution226.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/13.
//

import Foundation

class Solution226 : Solution {
    override func logStr() -> String {
        return "226.翻转二叉树"
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
        
        print("结果：\(self.invertTree(node1)?.val ?? 0)")
    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        self._invertTree(root)
        return root
    }
    
    func _invertTree(_ root: TreeNode?) {
        if root?.left == nil && root?.right == nil {
            return
        }
        let tempNode:TreeNode? = root?.left
        root?.left = root?.right
        root?.right = tempNode
        self._invertTree(root?.left)
        self._invertTree(root?.right)
    }
}
