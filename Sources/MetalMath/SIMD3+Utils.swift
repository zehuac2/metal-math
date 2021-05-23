//
//  File.swift
//
//
//  Created by Zehua Chen on 5/21/21.
//

extension SIMD3 {
  @inlinable
  public init(_ simd4: SIMD4<Scalar>) {
    self.init(x: simd4.x, y: simd4.y, z: simd4.z)
  }
}
