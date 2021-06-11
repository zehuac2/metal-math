//
//  File.swift
//
//
//  Created by Zehua Chen on 5/21/21.
//

import MetalMath
import XCTest
import simd

class Float4x4TranslationTests: XCTestCase {
  func testTranslate() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translate([-1, 1, 2])
    let result = translation * position

    XCTAssertEqual(result, [0, 2, 3, 1])
  }

  func testTranslateX() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateX(-1)
    let result = translation * position

    XCTAssertEqual(result, [0, 1, 1, 1])
  }

  func testTranslateY() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateY(-1)
    let result = translation * position

    XCTAssertEqual(result, [1, 0, 1, 1])
  }

  func testTranslateZ() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateZ(-1)
    let result = translation * position

    XCTAssertEqual(result, [1, 1, 0, 1])
  }
}
