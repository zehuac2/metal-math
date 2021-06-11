//
//  File.swift
//
//
//  Created by Zehua Chen on 5/20/21.
//
import simd

extension Float4x4 {
  /// Create a translation matrix along the X, Y, Z axis
  /// - Parameter offset: offset along the X, Y, Z axis
  /// - Returns: a translation matrix
  @inlinable
  public static func translate(_ offset: SIMD3<Float32>) -> Self {
    return Float4x4(rows: [
      [1, 0, 0, offset.x],
      [0, 1, 0, offset.y],
      [0, 0, 1, offset.z],
      [0, 0, 0, 1],
    ])
  }

  /// Create a translation matrix along the X axis
  /// - Parameter offset: offset along the X axis
  /// - Returns: a translation matrix
  @inlinable
  public static func translateX(_ offset: Float32) -> Self {
    return Float4x4(rows: [
      [1, 0, 0, offset],
      [0, 1, 0, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 1],
    ])
  }

  /// Create a translation matrix along the Y axis
  /// - Parameter offset: offset along the Y axis
  /// - Returns: a translation matrix
  @inlinable
  public static func translateY(_ offset: Float32) -> Self {
    return Float4x4(rows: [
      [1, 0, 0, 0],
      [0, 1, 0, offset],
      [0, 0, 1, 0],
      [0, 0, 0, 1],
    ])
  }

  /// Create a translation matrix along the Z axis
  /// - Parameter offset: offset along the Z axis
  /// - Returns: a translation matrix
  @inlinable
  public static func translateZ(_ offset: Float32) -> Self {
    return Float4x4(rows: [
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, offset],
      [0, 0, 0, 1],
    ])
  }
}
