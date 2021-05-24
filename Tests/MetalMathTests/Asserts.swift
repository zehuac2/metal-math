//
//  File.swift
//
//
//  Created by Zehua Chen on 5/21/21.
//

import XCTest
import simd

func XCTAssertEqual(
  _ expression1: SIMD3<Float32>,
  _ expression2: SIMD3<Float32>,
  accuracy: Float32 = 0.001,
  _ message: @autoclosure () -> String = "",
  file: StaticString = #filePath,
  line: UInt = #line
) {
  XCTAssertEqual(
    expression1.x,
    expression2.x,
    accuracy: accuracy,
    "x: \(expression1.x) != \(expression2.x), \(message())",
    file: file,
    line: line)

  XCTAssertEqual(
    expression1.y,
    expression2.y,
    accuracy: accuracy,
    "y: \(expression1.y) != \(expression2.y), \(message())",
    file: file,
    line: line)

  XCTAssertEqual(
    expression1.z,
    expression2.z,
    accuracy: accuracy,
    "z: \(expression1.z) != \(expression2.z), \(message())",
    file: file,
    line: line)
}

func XCTAssertEqual(
  _ expression1: SIMD4<Float32>,
  _ expression2: SIMD4<Float32>,
  accuracy: Float32 = 0.001,
  _ message: @autoclosure () -> String = "",
  file: StaticString = #filePath,
  line: UInt = #line
) {
  XCTAssertEqual(
    expression1.x,
    expression2.x,
    accuracy: accuracy,
    "x: \(expression1.x) != \(expression2.x), \(message())",
    file: file,
    line: line)

  XCTAssertEqual(
    expression1.y,
    expression2.y,
    accuracy: accuracy,
    "y: \(expression1.y) != \(expression2.y), \(message())",
    file: file,
    line: line)

  XCTAssertEqual(
    expression1.z,
    expression2.z,
    accuracy: accuracy,
    "z: \(expression1.z) != \(expression2.z), \(message())",
    file: file,
    line: line)

  XCTAssertEqual(
    expression1.w,
    expression2.w,
    accuracy: accuracy,
    "w: \(expression1.w) != \(expression2.w), \(message())",
    file: file,
    line: line)
}
