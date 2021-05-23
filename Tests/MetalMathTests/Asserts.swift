//
//  File.swift
//  
//
//  Created by Zehua Chen on 5/21/21.
//

import XCTest
import simd

func XCTAssertEqual(
    _ expression1: SIMD3<Float32>,
    _ expression2: SIMD3<Float32>,
  accuracy: Float32 = 0.001) {
  XCTAssertEqual(expression1.x, expression2.x, accuracy: accuracy)
  XCTAssertEqual(expression1.y, expression2.y, accuracy: accuracy)
  XCTAssertEqual(expression1.z, expression2.z, accuracy: accuracy)
}
