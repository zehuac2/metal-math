//
//  simd_float4x4+Translation.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/20/21.
//

import simd

extension simd_float4x4 {
  /// Create a translation matrix along the X, Y, Z axis.
  /// - Parameter offset: Offset along the X, Y, Z axis.
  /// - Returns: A translation matrix.
  @inlinable
  public static func translate(_ offset: SIMD3<Float>) -> Self {
    return simd_float4x4(
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, 0],
      [offset.x, offset.y, offset.z, 1])
  }

  /// Create a translation matrix along the X axis.
  /// - Parameter offset: Offset along the X axis.
  /// - Returns: A translation matrix.
  @inlinable
  public static func translateX(_ offset: Float) -> Self {
    return simd_float4x4(
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, 0],
      [offset, 0, 0, 1])
  }

  /// Create a translation matrix along the Y axis.
  /// - Parameter offset: Offset along the Y axis.
  /// - Returns: A translation matrix.
  @inlinable
  public static func translateY(_ offset: Float) -> Self {
    return simd_float4x4(
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, 0],
      [0, offset, 0, 1])
  }

  /// Create a translation matrix along the Z axis.
  /// - Parameter offset: Offset along the Z axis.
  /// - Returns: A translation matrix.
  @inlinable
  public static func translateZ(_ offset: Float) -> Self {
    return simd_float4x4(
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, 0],
      [0, 0, offset, 1])
  }
}
