//
//  Float32+Degree.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

public extension Float32 {
  @inlinable
  var radian: Float32 {
    return self * .pi / 180
  }
}
