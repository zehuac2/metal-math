//
//  simd_float4x4+RotationTests.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/23/21.
//

import MetalMath
import Testing
import simd

struct Float4x4RotationTests {
  @Test func rotateYAround() {
    let rotation = simd_float4x4.rotateY(Float(180).radians, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float>([0, 0, 0, 1])

    expectEqual([0, 0, 1, 1], point)

    point = rotation * point

    expectEqual([0, 0, 0, 1], point)
  }

  @Test func rotateXAround() {
    let rotation = simd_float4x4.rotateX(Float(180).radians, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float>([0, 0, 0, 1])

    expectEqual([0, 0, 1, 1], point)

    point = rotation * point

    expectEqual([0, 0, 0, 1], point)
  }

  @Test func rotateZAround() {
    let rotation = simd_float4x4.rotateZ(Float(180).radians, around: [0, 0, 0.5])
    var point = rotation * SIMD4<Float>([0, 0, 0, 1])

    expectEqual([0, 0, 0, 1], point)

    point = rotation * point

    expectEqual([0, 0, 0, 1], point)
  }
}
