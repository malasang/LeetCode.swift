//
//  InvertBinaryTreeTest.swift
//  LeetCode
//
//  Created by Lex Tang on 6/12/15.
//  Copyright (c) 2015 Lex Tang. All rights reserved.
//

import Foundation
import XCTest

class InvertBinaryTreeTest: XCTestCase {

    func testInvertBinaryTree() {
        self.measureBlock() {
            let t0 = TreeNode(0,
                TreeNode(1), TreeNode(2,
                                 TreeNode(3), TreeNode(4)))
            let r0 = invertBinaryTree(t0)
            
            XCTAssert(r0.leftNode!.value == 2, "")
            XCTAssert(r0.leftNode!.leftNode!.value == 4, "")
            XCTAssert(r0.rightNode!.value == 1, "")
            
            let t1 = TreeNode(4,
                TreeNode(2, TreeNode(1), TreeNode(3)),
                TreeNode(7, TreeNode(6), TreeNode(9)))
            let r1 = invertBinaryTree(t1)
            
            XCTAssert(r1.leftNode!.value == 7, "")
            XCTAssert(r1.rightNode!.value == 2, "")
            XCTAssert(r1.leftNode!.leftNode!.value == 9, "")
            XCTAssert(r1.leftNode!.rightNode!.value == 6, "")
            XCTAssert(r1.rightNode!.leftNode!.value == 3, "")
            XCTAssert(r1.rightNode!.rightNode!.value == 1, "")
        }
    }

}
