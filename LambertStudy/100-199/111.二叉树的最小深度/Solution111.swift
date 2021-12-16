//
//  File.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution111 : Solution {
    override func logStr() -> String {
        return "111.二叉树的最小深度"
    }
    
    override func example() {
        let t11 = TreeNode.init(11)
        
        let t21 = TreeNode.init(21)
        let t22 = TreeNode.init(22)
        
        let t31 = TreeNode.init(31)
        
        let t41 = TreeNode.init(41)
        
        let root = t11
        
        t11.left = t21
        t11.right = t22
        
        t21.left  = t31
        
        t31.left  = t41
        
        print("最小深度：\(self.minDepth(root))")
    }
    
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        
        var min_depth:Int = Int.max
        if root?.left != nil {
            //单边空结点不能当深度计算
            min_depth = min(self.minDepth(root?.left), min_depth)
        }
        if root?.right != nil {
            //单边空结点不能当深度计算
            min_depth = min(self.minDepth(root?.right), min_depth)
        }
        return 1 + min_depth
    }
}
