//
//  Solution190.swift
//  LambertStudy
//
//  Created by Lambert on 2022/1/11.
//

import Foundation

class Solution190 : Solution {
    override func logStr() -> String {
        return "190.颠倒二进制位"
    }
    
    override func example() {
        print("结果：\(self.reverseBits(43261596))")
    }
    
    //分治
    /*
     12345678
     21436587
     43218765
     87654321
     */
    /*
     abcdefghijklmnopqrstuvwxyz012345
     qrstuvwxyz012345        abcdefghijklmnop
     yz012345    qrstuvwx    ijklmnop    abcdefgh
     2345  yz01  uvwx  qrst  mnop  ijkl  efgh  abcd
     45 23 01 yz wx uv st qr op mn kl ij gh ef cd ab
     54 32 10 zy xw vu ts rq po nm lk ji hg fe dc ba
     */
    
    func reverseBits(_ n: Int) -> Int {
        var n = n
        //交换左右两边16位数
        n = (n >> 16) | (n << 16)
        //交换左右两边8位数
        n = ((n & 0b1111_1111_0000_0000_1111_1111_0000_0000) >> 8)
          | ((n & 0b0000_0000_1111_1111_0000_0000_1111_1111) << 8)
        //交换左右两边4位数
        n = ((n & 0b1111_0000_1111_0000_1111_0000_1111_0000) >> 4)
          | ((n & 0b0000_1111_0000_1111_0000_1111_0000_1111) << 4)
        //交换左右两边2位数
        n = ((n & 0b1100_1100_1100_1100_1100_1100_1100_1100) >> 2)
          | ((n & 0b0011_0011_0011_0011_0011_0011_0011_0011) << 2)
        //交换左右两边1位数
        n = ((n & 0b1010_1010_1010_1010_1010_1010_1010_1010) >> 1)
          | ((n & 0b0101_0101_0101_0101_0101_0101_0101_0101) << 1)
        
        return n
    }
}
