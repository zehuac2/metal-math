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

  /// Create a perspective projection matrix
  ///
  /// Originally from [Metal by Examples](https://github.com/metal-by-example/sample-code/blob/a73cc91cf8e4dcae452e732d4c7800eb4ac2d44d/objc/04-DrawingIn3D/DrawingIn3D/MBEMathUtilities.m#L58-L73)
  /// - Parameters:
  ///   - fovY: field of view in radians
  ///   - aspect: aspect ratio between the X and the Y axis
  ///   - nearZ: near Z plane
  ///   - farZ: far Z plane
  /// - Returns: a projection matrix
  @inlinable
  static func perspective(fovY: Float32, aspect: Float32, nearZ: Float32, farZ: Float32) -> Self {
    let yScale = 1 / tan(fovY * 0.5)
    let xScale = yScale / aspect
    let zRange = farZ - nearZ
    let zScale = -(farZ + nearZ) / zRange
    let wzScale = -2 * farZ * nearZ / zRange

    return simd_float4x4(columns: (
      [xScale, 0, 0, 0],
      [0, yScale, 0, 0],
      [0, 0, zScale, -1],
      [0, 0, wzScale, 0]
    ))
  }
}
