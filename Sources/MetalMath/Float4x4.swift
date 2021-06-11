//
//  Float4x4.swift
//  
//
//  Created by Zehua Chen on 6/11/21.
//

#if canImport(simd)

import simd

public typealias Float4x4 = simd_float4x4

extension Float4x4 {
  static var identity: Float4x4 = matrix_identity_float4x4
}

#else

public struct Float4x4 {
  @inlinable
  public static var identity: Float4x4 = .init(
    col0: [1, 0, 0, 0],
    col1: [0, 1, 0, 0],
    col2: [0, 0, 1, 0],
    col3: [0, 0, 0, 1])

  @inlinable
  public init(col0: SIMD4<Float32>, col1: SIMD4<Float32>, col2: SIMD4<Float32>, col3: SIMD4<Float32>) {
  }

  public static func *(lhs: Float4x4, rhs: Float4x4) -> Float4x4 {
    .identity
  }

  public static func *(lhs: Float4x4, rhs: SIMD4<Float32>) -> SIMD4<Float32> {
    return rhs
  }
}

#endif
