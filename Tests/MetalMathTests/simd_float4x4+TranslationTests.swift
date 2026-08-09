//
//  simd_float4x4+TranslationTests.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/21/21.
//

import MetalMath
import simd
import Testing

struct Float4x4TranslationTests {
  @Test func translate() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translate([-1, 1, 2])
    let result = translation * position

    expectEqual(result, [0, 2, 3, 1])
  }

  @Test func translateX() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateX(-1)
    let result = translation * position

    expectEqual(result, [0, 1, 1, 1])
  }

  @Test func translateY() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateY(-1)
    let result = translation * position

    expectEqual(result, [1, 0, 1, 1])
  }

  @Test func translateZ() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let translation = simd_float4x4.translateZ(-1)
    let result = translation * position

    expectEqual(result, [1, 1, 0, 1])
  }
}
