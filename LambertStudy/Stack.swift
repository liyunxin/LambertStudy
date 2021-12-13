//
//  Stack.swift
//  LambertStudy
//
//  Created by Lambert on 2021/12/13.
//

import Foundation

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return self.array.isEmpty
    }
    
    public var count: Int {
        return self.array.count
    }
    
    public mutating func push(_ element: T) {
        self.array.append(element)
    }
    
    public mutating func pop() -> T? {
        return self.array.popLast()
    }
    
    public var top: T? {
        return self.array.last
    }
}
