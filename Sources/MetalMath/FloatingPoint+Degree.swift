//
//  Float32+Degree.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

extension FloatingPoint {
  /// Convert the number from degree to radian
  ///
  /// `self * .pi / 180`
  @inlinable
  public var radian: Self {
    return self * .pi / 180
  }

  /// Convert the number from radian to degree
  ///
  /// `self * 180 / .pi`
  @inlinable
  public var degree: Self {
    return self * 180 / .pi
  }
}
