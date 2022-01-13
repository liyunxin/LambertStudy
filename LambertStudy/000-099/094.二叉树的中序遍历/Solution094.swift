//
//  Solution094.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//
//  中序遍历：左 - 根 - 右

import Foundation

class Solution094 : Solution {
    override func logStr() -> String {
        return "094.二叉树的中序遍历"
    }
    
    override func example() {
        let root  = TreeNode.init(1)
        let two   = TreeNode.init(2)
        let three = TreeNode.init(3)
        
        root.right = two
        two.left = three
        
        print("结果：\(self.inorderTraversal(root))")
    }
    
//    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        var treeNode:TreeNode? = root
//        var result:[Int] = []
//        var stack:Stack<TreeNode> = Stack()
//
//        while treeNode != nil || !stack.isEmpty {
//            while treeNode != nil {
//                stack.push(treeNode!)
//                treeNode = treeNode?.left
//            }
//            //此时找到了没有左子树的节点，记录节点
//            treeNode = stack.pop()
//            if let treeNode = treeNode {
//                result.append(treeNode.val)
//            }
//            //开始遍历该节点的右子树
//            treeNode = treeNode?.right
//        }
//        return result
//    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        return self.inorderTraversal(root?.left) + [root?.val ?? 0] + self.inorderTraversal(root?.right)
    }
}
