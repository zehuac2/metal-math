// swift-tools-version:6.0

import PackageDescription

let package = Package(
  name: "MetalMath",
  platforms: [.macOS(.v10_13)],
  products: [
    .library(
      name: "MetalMath",
      targets: ["MetalMath"])
  ],
  targets: [
    .target(
      name: "MetalMath",
      dependencies: []
    ),
    .testTarget(
      name: "MetalMathTests",
      dependencies: ["MetalMath"]
    ),
  ]
)
