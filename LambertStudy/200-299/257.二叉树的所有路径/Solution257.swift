//
//  Solution257.swift
//  LambertStudy
//
//  Created by Lambert on 2022/3/07.
//

import Foundation

class Solution257 : Solution {
    override func logStr() -> String {
        return "257.二叉树的所有路径"
    }
    
    override func example() {
        let node1 = TreeNode.init(1)
        let node2 = TreeNode.init(2)
        let node3 = TreeNode.init(3)
        let node4 = TreeNode.init(4)
        let node5 = TreeNode.init(5)
        let node6 = TreeNode.init(6)
        let node7 = TreeNode.init(7)
        
        node1.left = node2
        node1.right = node3
        
        node2.left = node4
        node2.right = node5
        
        node3.left = node6
        node3.right = node7
        
        print("结果：\(self.binaryTreePaths(node1))")
    }
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        if root == nil {
            return []
        }
        var pathList:[String] = []
        self._binaryTreePaths(root, "", pathList: &pathList)
        return pathList
    }
    
    func _binaryTreePaths(_ root: TreeNode?, _ path:String, pathList:inout [String]) {
        if root != nil {
            if root?.left == nil && root?.right == nil {
                pathList.append(path + "\(root?.val ?? 0)")
                return
            }
            self._binaryTreePaths(root?.left, path + "\(root?.val ?? 0)->", pathList: &pathList)
            self._binaryTreePaths(root?.right, path + "\(root?.val ?? 0)->", pathList: &pathList)
        }
    }
}
