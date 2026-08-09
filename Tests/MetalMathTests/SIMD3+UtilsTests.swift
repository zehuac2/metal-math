//
//  SIMD3+UtilsTests.swift
//  MetalMath
//
//  Created by Zehua Chen on 8/9/26.
//

import MetalMath
import Testing
import simd

struct SIMD3UtilsTests {
  @Test func initFromSIMD4() {
    let vector4 = SIMD4<Float>([1, 2, 3, 4])
    let vector3 = SIMD3(vector4)

    expectEqual(vector3, [1, 2, 3])
  }
}
