//
//  Solution235.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/19.
//
/* 二叉查找树（Binary Search Tree），（又：二叉搜索树，二叉排序树）
   它或者是一棵空树，
   或者是具有下列性质的二叉树：若它的左子树不空，则左子树上所有结点的值均小于它的根结点的值；
                          若它的右子树不空，则右子树上所有结点的值均大于它的根结点的值；
   它的左、右子树也分别为二叉排序树。
 */

import Foundation

class Solution235 : Solution {
    override func logStr() -> String {
        return "235.二叉搜索树的最近公共祖先"
    }
    
    override func example() {
        let node6 = TreeNode.init(6)
        let node2 = TreeNode.init(2)
        let node8 = TreeNode.init(8)
        let node0 = TreeNode.init(0)
        let node4 = TreeNode.init(4)
        let node7 = TreeNode.init(7)
        let node9 = TreeNode.init(9)
        let node3 = TreeNode.init(3)
        let node5 = TreeNode.init(5)
        
        node6.left = node2
        node6.right = node8
        
        node2.left = node0
        node2.right = node4
        
        node8.left = node7
        node8.right = node9
        
        node4.left = node3
        node4.right = node5
        
        print("结果：\(self.lowestCommonAncestor(node6, node2, node8)?.val ?? 0)")
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        let pPathList = self.getSearchPathList(root, p)
        let qPathList = self.getSearchPathList(root, q)
        
        var ancestor:TreeNode? = nil
        for i in 0..<min(pPathList.count, qPathList.count) {
            if (pPathList[i].val == qPathList[i].val) {
                ancestor = pPathList[i]
            } else {
                break
            }
        }
        return ancestor
    }
    
    func getSearchPathList(_ root: TreeNode?, _ p:TreeNode?) -> [TreeNode] {
        var pathList:[TreeNode] = []
        var node:TreeNode? = root
        while !(node === p) {
            if let node = node {
                pathList.append(node)
            }
            if (node?.val ?? 0) < (p?.val ?? 0) {
                node = node?.right
            } else {
                node = node?.left
            }
        }
        if let node = node {
            pathList.append(node)
        }
        return pathList
    }
}

