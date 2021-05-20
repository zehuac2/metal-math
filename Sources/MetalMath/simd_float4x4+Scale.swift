//
//  File.swift
//  
//
//  Created by Zehua Chen on 5/20/21.
//

import simd

public extension simd_float4x4 {
  @inlinable
  static func scale(_ axis: SIMD3<Float32>) -> Self {
    return simd_float4x4(rows: [
      [axis.x, 0, 0, 0],
      [0, axis.y, 0, 0],
      [0, 0, axis.z, 0],
      [0, 0, 0, 1],
    ])
  }
}
