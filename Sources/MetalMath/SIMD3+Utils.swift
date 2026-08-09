//
//  SIMD3+Utils.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/21/21.
//

import simd

extension SIMD3 {
  /// Initialize from the x, y, z components of a `SIMD4`.
  @inlinable
  public init(_ simd4: SIMD4<Scalar>) {
    self.init(x: simd4.x, y: simd4.y, z: simd4.z)
  }
}
