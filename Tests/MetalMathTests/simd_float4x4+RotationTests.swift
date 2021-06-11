//
//  File.swift
//
//
//  Created by Zehua Chen on 5/23/21.
//

import MetalMath
import XCTest
import simd

class Float4x4RotationTests: XCTestCase {
  func testRotateYAround() {
    let rotation = Float4x4.rotateY(Float32(180).radian, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float32>([0, 0, 0, 1])

    XCTAssertEqual([0, 0, 1, 1], point)

    point = rotation * point

    XCTAssertEqual([0, 0, 0, 1], point)
  }

  func testRotateXAround() {
    let rotation = Float4x4.rotateX(Float32(180).radian, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float32>([0, 0, 0, 1])

    XCTAssertEqual([0, 0, 1, 1], point)

    point = rotation * point

    XCTAssertEqual([0, 0, 0, 1], point)
  }

  func testRotateZAround() {
    let rotation = Float4x4.rotateZ(Float32(180).radian, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float32>([0, 0, 0, 1])

    XCTAssertEqual([0, 0, 0, 1], point)

    point = rotation * point

    XCTAssertEqual([0, 0, 0, 1], point)
  }
}
