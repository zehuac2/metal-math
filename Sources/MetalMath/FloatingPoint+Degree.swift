//
//  FloatingPoint+Degree.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

extension FloatingPoint {
  /// The value converted from degrees to radians.
  ///
  /// `self * .pi / 180`
  @inlinable
  public var radians: Self {
    return self * .pi / 180
  }

  /// The value converted from radians to degrees.
  ///
  /// `self * 180 / .pi`
  @inlinable
  public var degrees: Self {
    return self * 180 / .pi
  }
}
