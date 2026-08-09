//
//  simd_float4x4+Scaling.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/20/21.
//

import simd

extension simd_float4x4 {
  /// Create a scaling matrix along the X, Y, Z axis.
  /// - Parameter axis: Scaling factor along the X, Y, Z axis.
  /// - Returns: A scaling matrix.
  @inlinable
  public static func scale(_ axis: SIMD3<Float>) -> Self {
    return simd_float4x4(
      [axis.x, 0, 0, 0],
      [0, axis.y, 0, 0],
      [0, 0, axis.z, 0],
      [0, 0, 0, 1])
  }
}
