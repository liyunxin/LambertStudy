//
//  Solution100.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution100 : Solution {
    override func logStr() -> String {
        return "100.相同的树"
    }
    
    override func example() {
        let t11 = TreeNode.init(1)
        let t12 = TreeNode.init(2)
        let t13 = TreeNode.init(3)
        
        let p = t11
        t11.left = t12
        t12.right = t13
        
        let t21 = TreeNode.init(1)
        let t22 = TreeNode.init(2)
        let t23 = TreeNode.init(3)
        
        let q = t21
        t21.left = t22
        t22.left = t23
        
        print("结果：\(self.isSameTree(p, q) ? "相同的树" : "不同的树")")
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        //深度优先搜索
        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil {
            return false
        }
        
        if p?.val == q?.val {
            return self.isSameTree(p?.left, q?.left) && self.isSameTree(p?.right, q?.right)
        }
        
        return false
    }
}
