//
//  Solution101.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution101 : Solution {
    override func logStr() -> String {
        return "101.对称二叉树"
    }
    
    override func example() {
        let t1 = TreeNode.init(1)
        
        let t21 = TreeNode.init(2)
        let t22 = TreeNode.init(2)
        
        let t31 = TreeNode.init(3)
        let t32 = TreeNode.init(4)
        let t33 = TreeNode.init(4)
        let t34 = TreeNode.init(3)
        
        let t41 = TreeNode.init(5)
        let t42 = TreeNode.init(6)
        let t43 = TreeNode.init(7)
        let t44 = TreeNode.init(8)
        let t45 = TreeNode.init(8)
        let t46 = TreeNode.init(7)
        let t47 = TreeNode.init(6)
        let t48 = TreeNode.init(5)
        
        let root = t1
        
        t1.left = t21
        t1.right = t22
        
        t21.left  = t31
        t21.right = t32
        t22.left  = t33
        t22.right = t34
        
        t31.left  = t41
        t31.right = t42
        t32.left  = t43
        t32.right = t44
        t33.left  = t45
        t33.right = t46
        t34.left  = t47
        t34.right = t48
        
        print("结果：\(self.isSymmetric(root) ? "对称的" : "不对称的")")
    }
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil || (root?.left == nil && root?.right == nil) {
            return true
        }
        return self._isSymmetric(root?.left, root?.right)
    }
    
    func _isSymmetric(_ leftTree:TreeNode?, _ rightTree:TreeNode?) -> Bool {
        if leftTree != nil && rightTree != nil {
            //继续比较
            if leftTree?.val != rightTree?.val {
                print("111 \(leftTree?.val ?? 0) - \(rightTree?.val ?? 0)")
                return false
            } else {
                print("222 \(leftTree?.val ?? 0) - \(rightTree?.val ?? 0)")
                return self._isSymmetric(leftTree?.right, rightTree?.left)
                    && self._isSymmetric(leftTree?.left, rightTree?.right)
            }
        }
        
        print("333 \(leftTree?.val ?? 0) - \(rightTree?.val ?? 0)")
        return leftTree == nil && rightTree == nil
    }
}
