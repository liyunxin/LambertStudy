//
//  Solution144.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/12.
//

import Foundation

class Solution144 : Solution {
    override func logStr() -> String {
        return "144.二叉树的前序遍历"
    }
    
    override func example() {
        let root  = TreeNode.init(1)
        let two   = TreeNode.init(2)
        let three = TreeNode.init(3)
        
        root.right = two
        two.left = three
        
        print("结果：\(self.preorderTraversal(root))")
    }
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        return [root?.val ?? 0] + self.preorderTraversal(root?.left) + self.preorderTraversal(root?.right)
    }
}
