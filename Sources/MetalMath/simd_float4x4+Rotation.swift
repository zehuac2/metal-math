//
//  simd_float4x4+Rotate.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

import simd

extension Float4x4 {

  /// Create a rotation matrix around X axis
  /// - Parameter rotation: rotation around x in radians
  /// - Returns: a rotation matrix
  @inlinable
  public static func rotateX(_ rotation: Float32) -> Self {
    return Float4x4(rows: [
      [1, 0, 0, 0],
      [0, cos(rotation), -sin(rotation), 0],
      [0, sin(rotation), cos(rotation), 0],
      [0, 0, 0, 1],
    ])
  }

  /// Create a rotation matrix around Y axis
  /// - Parameter rotation: rotation around y in radians
  /// - Returns: a rotation matrix
  @inlinable
  public static func rotateY(_ rotation: Float32) -> Self {
    return Float4x4(rows: [
      [cos(rotation), 0, sin(rotation), 0],
      [0, 1, 0, 0],
      [-sin(rotation), 0, cos(rotation), 0],
      [0, 0, 0, 1],
    ])
  }

  /// Create a rotation matrix around Z axis
  /// - Parameter rotation: rotation around z in radians
  /// - Returns: a rotation matrix
  @inlinable
  public static func rotateZ(_ rotation: Float32) -> Self {
    return Float4x4(rows: [
      [cos(rotation), -sin(rotation), 0, 0],
      [sin(rotation), cos(rotation), 0, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 1],
    ])
  }

  @inlinable
  public static func rotateX(_ rotation: Float32, around center: SIMD3<Float32>) -> Self {
    return .translate(center) * .rotateX(rotation) * .translate(-center)
  }

  @inlinable
  public static func rotateY(_ rotation: Float32, around center: SIMD3<Float32>) -> Self {
    return .translate(center) * .rotateY(rotation) * .translate(-center)
  }

  @inlinable
  public static func rotateZ(_ rotation: Float32, around center: SIMD3<Float32>) -> Self {
    return .translate(center) * .rotateZ(rotation) * .translate(-center)
  }
}
