//
//  simd_float4x4+CameraTests.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/21/21.
//

import MetalMath
import Testing
import simd

struct Float4x4CameraTests {
  @Test func viewFromBehind() {
    let position = SIMD4<Float>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [0, 0, -1], up: [0, 1, 0])
    let result = lookat * position

    expectEqual(result, [0, 0, 1, 1])
  }

  @Test func viewFromFront() {
    let position = SIMD4<Float>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [0, 0, 1], up: [0, 1, 0])
    let result = lookat * position

    expectEqual(result, [0, 0, 1, 1])
  }

  @Test func viewFromRight() {
    let position = SIMD4<Float>([0, 0, 0, 1])
    let lookat = simd_float4x4.look(at: [0, 0, 0], from: [1, 0, 0], up: [0, 1, 0])
    let result = lookat * position

    expectEqual(result, [0, 0, 1, 1])
  }
}
