//
//  Expectations.swift
//  MetalMath
//
//  Created by Zehua Chen on 5/21/21.
//

import Testing
import simd

func expectEqual(
  _ expression1: Double,
  _ expression2: Double,
  accuracy: Double = 0.001,
  sourceLocation: SourceLocation = #_sourceLocation
) {
  #expect(
    abs(expression1 - expression2) <= accuracy,
    "\(expression1) != \(expression2)",
    sourceLocation: sourceLocation
  )
}

func expectEqual(
  _ expression1: SIMD3<Float32>,
  _ expression2: SIMD3<Float32>,
  accuracy: Float32 = 0.001,
  sourceLocation: SourceLocation = #_sourceLocation
) {
  for index in expression1.indices {
    let diff = abs(expression1[index] - expression2[index])
    #expect(
      diff <= accuracy,
      "Component \(index): \(expression1[index]) != \(expression2[index])",
      sourceLocation: sourceLocation
    )
  }
}

func expectEqual(
  _ expression1: SIMD4<Float32>,
  _ expression2: SIMD4<Float32>,
  accuracy: Float32 = 0.001,
  sourceLocation: SourceLocation = #_sourceLocation
) {
  for index in expression1.indices {
    let diff = abs(expression1[index] - expression2[index])
    #expect(
      diff <= accuracy,
      "Component \(index): \(expression1[index]) != \(expression2[index])",
      sourceLocation: sourceLocation
    )
  }
}
