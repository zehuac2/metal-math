//
//  simd_float4x4+ScalingTests.swift
//  MetalMath
//
//  Created by Zehua Chen on 8/9/26.
//

import MetalMath
import Testing
import simd

struct Float4x4ScalingTests {
  @Test func scale() {
    let position = SIMD4<Float32>([1, 1, 1, 1])
    let scaling = simd_float4x4.scale([2, 3, 4])
    let result = scaling * position

    expectEqual(result, [2, 3, 4, 1])
  }
}
