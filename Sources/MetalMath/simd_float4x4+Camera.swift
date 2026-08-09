//
//  simd_float4x4+Camera.swift
//  MetalMath
//
//  Created by Zehua Chen on 12/31/20.
//

import simd

extension simd_float4x4 {
  /// Create a look-at view matrix.
  /// - Parameters:
  ///   - target: The point to look at.
  ///   - eye: The position of the eye/camera.
  ///   - up: The up direction.
  /// - Returns: A view matrix.
  @inlinable
  public static func look(at target: SIMD3<Float>, from eye: SIMD3<Float>, up: SIMD3<Float>)
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

  /// Create a perspective projection matrix.
  /// - Parameters:
  ///   - fovY: Vertical field of view in radians.
  ///   - aspect: Aspect ratio between the X and Y axis, i.e. `width / height`.
  ///   - nearZ: Near Z plane.
  ///   - farZ: Far Z plane.
  /// - Returns: A projection matrix.
  @inlinable
  public static func perspective(fovY: Float, aspect: Float, nearZ: Float, farZ: Float) -> Self {
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

  /// Create a perspective projection matrix.
  /// - Parameters:
  ///   - right: Maximum x-value of the view volume.
  ///   - left: Minimum x-value of the view volume.
  ///   - top: Maximum y-value of the view volume.
  ///   - bottom: Minimum y-value of the view volume.
  ///   - nearZ: Minimum z-value of the view volume.
  ///   - farZ: Maximum z-value of the view volume.
  /// - Returns: A projection matrix.
  @inlinable
  public static func perspective(
    right: Float, left: Float, top: Float, bottom: Float, nearZ: Float, farZ: Float
  ) -> Self {
    return simd_float4x4(
      [2 * nearZ / (right - left), 0, 0, 0],
      [0, 2, 0, 0],
      [
        -(right + left) / (right - left),
        -(top + bottom) / (top - bottom),
        farZ / (farZ - nearZ),
        1,
      ],
      [0, 0, -farZ * nearZ / (farZ - nearZ), 0])
  }
}
