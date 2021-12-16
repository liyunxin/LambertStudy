//
//  Solution112.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/16.
//

import Foundation

class Solution112 : Solution {
    override func logStr() -> String {
        return "112.路径总和"
    }
    
    override func example() {
        let t11 = TreeNode.init(5)
        
        let t21 = TreeNode.init(4)
        let t22 = TreeNode.init(8)
        
        let t31 = TreeNode.init(11)
        let t32 = TreeNode.init(13)
        let t33 = TreeNode.init(4)
        
        let t41 = TreeNode.init(7)
        let t42 = TreeNode.init(2)
        let t43 = TreeNode.init(1)
        
        let root = t11
        
        t11.left  = t21
        t11.right = t22
        
        t21.left  = t31
        t22.left  = t32
        t22.right = t33
        
        t31.left  = t41
        t31.right = t42
        t33.right = t43
        
        print("结果：\(self.hasPathSum(root, 22))")
        //print("结果：\(self.hasPathSum(nil, 0))")
    }
    
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil {
            return false
        }
        return self._hasPathSum(root, targetSum)
    }
    
    func _hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        
        print("val = \(root?.val ?? 0) - targetSum = \(targetSum)")
        
        let currentTargetSum = targetSum - (root?.val ?? 0)
        
        if root?.left == nil && root?.right == nil {
            return currentTargetSum == 0
        }
        
        var leftSum:Bool = false
        var rightSum:Bool = false
        
        if root?.left != nil {
            leftSum = self.hasPathSum(root?.left, currentTargetSum)
        }
        if leftSum == true {
            return leftSum
        }
        
        if root?.right != nil {
            rightSum = self.hasPathSum(root?.right, currentTargetSum)
        }
        return leftSum || rightSum
    }
}
