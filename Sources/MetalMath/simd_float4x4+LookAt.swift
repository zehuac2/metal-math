//
//  simd_float4x4+LookAt.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

import simd

public extension simd_float4x4 {
  @inlinable
  static func look(at target: SIMD3<Float32>, from eye: SIMD3<Float32>, up: SIMD3<Float32>) -> Self {
    let v = normalize(target - eye)
    let n = normalize(cross(v, up))
    let u = normalize(cross(n, v))

    return simd_float4x4(rows: [
      SIMD4<Float32>([n.x, n.y, n.z, -dot(n, eye)]),
      SIMD4<Float32>([u.x, u.y, u.z, -dot(u, eye)]),
      SIMD4<Float32>([v.x, v.y, v.z, -dot(v, eye)]),
      SIMD4<Float32>([0, 0, 0, 1]),
    ])
  }
}
