//
//  File.swift
//  
//
//  Created by Zehua Chen on 5/20/21.
//
import simd

extension simd_float4x4 {
  /// Create a translation matrix
  /// - Parameter offset: how much to translate by
  /// - Returns: a translation matrix
  @inlinable
  static func translate(_ offset: SIMD3<Float32>) -> Self {
    return simd_float4x4(rows: [
      [1, 0, 0, offset.x],
      [0, 1, 0, offset.y],
      [0, 0, 1, offset.z],
      [0, 0, 0, 1],
    ])
  }
}
