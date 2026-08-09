//
//  simd_float4x4+Rotation.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

import simd

extension simd_float4x4 {

  /// Create a rotation matrix around the X axis.
  /// - Parameter rotation: Rotation around the X axis in radians.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateX(_ rotation: Float) -> Self {
    return simd_float4x4(
      [1, 0, 0, 0],
      [0, cos(rotation), sin(rotation), 0],
      [0, -sin(rotation), cos(rotation), 0],
      [0, 0, 0, 1])
  }

  /// Create a rotation matrix around the Y axis.
  /// - Parameter rotation: Rotation around the Y axis in radians.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateY(_ rotation: Float) -> Self {
    return simd_float4x4(
      [cos(rotation), 0, -sin(rotation), 0],
      [0, 1, 0, 0],
      [sin(rotation), 0, cos(rotation), 0],
      [0, 0, 0, 1])
  }

  /// Create a rotation matrix around the Z axis.
  /// - Parameter rotation: Rotation around the Z axis in radians.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateZ(_ rotation: Float) -> Self {
    return simd_float4x4(
      [cos(rotation), sin(rotation), 0, 0],
      [-sin(rotation), cos(rotation), 0, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 1])
  }

  /// Create a rotation matrix around the X axis, around a given center point.
  /// - Parameters:
  ///   - rotation: Rotation around the X axis in radians.
  ///   - center: The point around which to rotate.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateX(_ rotation: Float, around center: SIMD3<Float>) -> Self {
    return .translate(center) * .rotateX(rotation) * .translate(-center)
  }

  /// Create a rotation matrix around the Y axis, around a given center point.
  /// - Parameters:
  ///   - rotation: Rotation around the Y axis in radians.
  ///   - center: The point around which to rotate.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateY(_ rotation: Float, around center: SIMD3<Float>) -> Self {
    return .translate(center) * .rotateY(rotation) * .translate(-center)
  }

  /// Create a rotation matrix around the Z axis, around a given center point.
  /// - Parameters:
  ///   - rotation: Rotation around the Z axis in radians.
  ///   - center: The point around which to rotate.
  /// - Returns: A rotation matrix.
  @inlinable
  public static func rotateZ(_ rotation: Float, around center: SIMD3<Float>) -> Self {
    return .translate(center) * .rotateZ(rotation) * .translate(-center)
  }
}
