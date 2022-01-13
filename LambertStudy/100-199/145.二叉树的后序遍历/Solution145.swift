//
//  Solution145.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/13.
//
//  后序遍历：左 - 右 - 根

import Foundation

class Solution145 : Solution {
    override func logStr() -> String {
        return "145.二叉树的后序遍历"
    }
    
    override func example() {
        let root  = TreeNode.init(1)
        let two   = TreeNode.init(2)
        let three = TreeNode.init(3)
        
        root.right = two
        two.left = three
        
        print("结果：\(self.postorderTraversal(root))")
    }
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        return self.postorderTraversal(root?.left) + self.postorderTraversal(root?.right) + [root?.val ?? 0]
    }
}
