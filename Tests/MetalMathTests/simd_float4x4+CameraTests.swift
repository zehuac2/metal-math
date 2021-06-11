//
//  File.swift
//
//
//  Created by Zehua Chen on 5/21/21.
//

import MetalMath
import XCTest
import simd

class Float4x4CameraTests: XCTestCase {
  func testViewFromBehind() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = Float4x4.look(at: [0, 0, 0], from: [0, 0, -1], up: [0, 1, 0])
    let result = lookat * position

    XCTAssertEqual(result, [0, 0, 1, 1])
  }

  func testViewFromFront() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = Float4x4.look(at: [0, 0, 0], from: [0, 0, 1], up: [0, 1, 0])
    let result = lookat * position

    XCTAssertEqual(result, [0, 0, 1, 1])
  }

  func testViewFromRight() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = Float4x4.look(at: [0, 0, 0], from: [1, 0, 0], up: [0, 1, 0])
    let result = lookat * position

    XCTAssertEqual(result, [0, 0, 1, 1])
  }
}
