//
//  Solution110.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution110 : Solution {
    override func logStr() -> String {
        return "110.平衡二叉树"
    }
    
    override func example() {
        let t11 = TreeNode.init(11)
        
        let t21 = TreeNode.init(21)
        let t22 = TreeNode.init(22)
        
        let t31 = TreeNode.init(31)
        let t32 = TreeNode.init(32)
        let t33 = TreeNode.init(33)
        
        let t41 = TreeNode.init(41)
        let t42 = TreeNode.init(42)
        let t43 = TreeNode.init(43)
        let t44 = TreeNode.init(44)
        
        let t51 = TreeNode.init(51)
        let t52 = TreeNode.init(52)
        let t53 = TreeNode.init(53)
        let t54 = TreeNode.init(54)
        let t55 = TreeNode.init(55)
        
        let root = t11
        
        t11.left  = t21
        t11.right = t22
        
        t21.left  = t31
        t21.right = t32
        t22.right = t33
        
        t31.left  = t41
        t31.right = t42
        t32.right = t43
        t33.right = t44
        
        t41.left  = t51
        t41.right = t52
        t42.right = t53
        t43.right = t54
        t44.right = t55
        
        print("结果：\(self.isBalanced(root) ? "平衡二叉树" : "非平衡二叉树")")
    }
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        let leftDepth:Int  = self.maxDepth(root?.left)
        let rightDepth:Int = self.maxDepth(root?.right)
        
        print("root = \(root?.val ?? 0), leftDepth = \(leftDepth), rightDepth = \(rightDepth)")
        
        if abs(leftDepth - rightDepth) <= 1 {
            return self.isBalanced(root?.left) && self.isBalanced(root?.right)
        }
        
        return false
    }
    
    //计算二叉树的最大深度
    func maxDepth(_ root: TreeNode?) -> Int {
        return Solution104().maxDepth(root)
    }
}
