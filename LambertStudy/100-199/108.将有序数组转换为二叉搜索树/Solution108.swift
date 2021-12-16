//
//  Solution108.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/15.
//

import Foundation

class Solution108 : Solution {
    override func logStr() -> String {
        return "108.将有序数组转换为二叉搜索树"
    }
    
    override func example() {
        let nums = [-10, -3, 0, 5, 9]
        print("结果：\(self.sortedArrayToBST(nums)?.val ?? 0)")
    }
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        print("数组 - \(nums)")
        if nums.count <= 0 {
            return nil
        }
        if (nums.count == 1) {
            //没有子节点了
            print("结束了 - \(nums[0])")
            return TreeNode.init(nums[0])
        }
        
        let count = nums.count / 2
        let root:TreeNode = TreeNode.init(nums[count])
        print("建立节点 - \(root.val)")
        
        let leftNums:[Int] = Array(nums[0...(count - 1)])
        root.left = self.sortedArrayToBST(leftNums)
        
        let rightBegin = count + 1
        let rightEnd = nums.count - 1
        if (rightBegin <= rightEnd) {
            let rightNums:[Int] = Array(nums[rightBegin...rightEnd])
            root.right = self.sortedArrayToBST(rightNums)
        }
        
        return root
    }
}
