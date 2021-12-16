//
//  Solution104.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution104 : Solution {
    override func logStr() -> String {
        return "104.二叉树的最大深度"
    }
    
    override func example() {
        let t1 = TreeNode.init(1)
        
        let t21 = TreeNode.init(2)
        let t22 = TreeNode.init(2)
        
        let t31 = TreeNode.init(3)
        
        let t41 = TreeNode.init(5)
        
        let root = t1
        
        t1.left = t21
        t1.right = t22
        
        t21.left  = t31
        
        t31.left  = t41
        
        print("最大深度：\(self.maxDepth(root))")
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        return 1 + max(self.maxDepth(root?.left), self.maxDepth(root?.right))
    }
}
