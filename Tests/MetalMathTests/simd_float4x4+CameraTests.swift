//
//  File.swift
//  
//
//  Created by Zehua Chen on 5/21/21.
//

import XCTest
import simd
@testable import MetalMath

class Float4x4CameraTests: XCTestCase {
  func testViewFromBehind() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [0, 0, -1], up: [0, 1, 0])
    let result = SIMD3<Float32>(lookat * position)

    XCTAssertEqual(result, [0, 0, 1])
  }

  func testViewFromFront() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [0, 0, 1], up: [0, 1, 0])
    let result = SIMD3<Float32>(lookat * position)

    XCTAssertEqual(result, [0, 0, 1])
  }

  func testViewFromRight() {
    let position = SIMD4<Float32>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [0, 1, 0], up: [0, 1, 0])
    let result = SIMD3<Float32>(lookat * position)

    XCTAssertEqual(result, [0, 0, -1])
  }
}
