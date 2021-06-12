//
//  simd_float4x4+LookAt.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

import simd

extension simd_float4x4 {
  @inlinable
  public static func look(at target: SIMD3<Float32>, from eye: SIMD3<Float32>, up: SIMD3<Float32>)
    -> Self
  {
    let zaxis = normalize(target - eye)
    let xaxis = normalize(cross(up, zaxis))
    let yaxis = cross(zaxis, xaxis)

    return simd_float4x4(
      [xaxis.x, yaxis.x, zaxis.x, 0],
      [xaxis.y, yaxis.y, zaxis.y, 0],
      [xaxis.z, yaxis.z, zaxis.z, 0],
      [-dot(xaxis, eye), -dot(yaxis, eye), -dot(zaxis, eye), 1])
  }

  /// Create a perspective projection matrix
  /// - Parameters:
  ///   - fovY: vertical field of view in radians
  ///   - aspect: aspect ratio between the X and Y axis, i.e. `width / height`
  ///   - nearZ: near Z plane
  ///   - farZ: far Z plane
  /// - Returns: a projection matrix
  @inlinable
  public static func perspective(fovY: Float32, aspect: Float32, nearZ: Float32, farZ: Float32)
    -> Self
  {
    let height = tan(fovY * 0.5)
    let yScale = 1 / height

    let width = aspect * height
    let xScale = 1 / width

    return .perspective(
      right: xScale / 2,
      left: -(xScale / 2),
      top: yScale / 2,
      bottom: -(yScale / 2),
      nearZ: nearZ,
      farZ: farZ)
  }

  /// Create a perspective projection matrix
  /// - Parameters:
  ///   - right: maximum x-value of the view volume
  ///   - left: minimum x-value of the view volume
  ///   - top: maximum y-value of the view volume
  ///   - bottom: minimum y-value of the view volume
  ///   - nearZ: minimum z-value of the view volume
  ///   - farZ: maximum z-value of the view volume
  /// - Returns: a projection matrix
  @inlinable
  public static func perspective(
    right: Float32, left: Float32, top: Float32, bottom: Float32, nearZ: Float32, farZ: Float32
  ) -> Self {
    return simd_float4x4(
      [2 * nearZ / (right - left), 0, 0, 0],
      [0, 2, 0, 0],
      [
        -(right + left) / (right - left), -(top + bottom) / (top - bottom), farZ / (farZ - nearZ),
        1,
      ],
      [0, 0, -farZ * nearZ / (farZ - nearZ), 0])
  }
}
