# MetalMath

A zero-dependency Swift package with extensions on `simd_float4x4`, `SIMD3`,
and `FloatingPoint` for Metal-style 3D math: transforms, camera/projection
matrices, and angle conversions.

## Installation

Add MetalMath as a dependency in your `Package.swift`:

```swift
dependencies: [
  .package(url: "https://github.com/zehuac2/metal-math.git", from: "1.0.0")
]
```

Then add it to your target:

```swift
.target(
  name: "YourTarget",
  dependencies: ["MetalMath"]
)
```

## Usage

All matrices are column-major, following simd convention: translation is
stored in the last column.

### Angle conversion

```swift
import MetalMath

let radians = 90.0.radians  // 90 degrees -> radians
let degrees = Float.pi.degrees  // radians -> degrees
```

### Translation

```swift
simd_float4x4.translate([1, 2, 3])
simd_float4x4.translateX(1)
simd_float4x4.translateY(2)
simd_float4x4.translateZ(3)
```

### Rotation

Angles are in radians.

```swift
simd_float4x4.rotateX(.pi / 4)
simd_float4x4.rotateY(.pi / 4)
simd_float4x4.rotateZ(.pi / 4)

// Rotate around an arbitrary pivot point
simd_float4x4.rotateY(.pi / 4, around: [0, 1, 0])
```

### Scaling

```swift
simd_float4x4.scale([2, 2, 2])
```

### Camera and projection

```swift
// Look-at view matrix
let view = simd_float4x4.look(at: target, from: eye, up: [0, 1, 0])

// Perspective projection from field of view
let projection = simd_float4x4.perspective(
  fovY: 65.0.radians,
  aspect: width / height,
  nearZ: 0.1,
  farZ: 100)

// Perspective projection from view volume bounds
let projection = simd_float4x4.perspective(
  right: 1, left: -1, top: 1, bottom: -1, nearZ: 0.1, farZ: 100)
```

### SIMD3 utilities

```swift
// Initialize a SIMD3 from the x, y, z components of a SIMD4
let position = SIMD3<Float>(vector4)
```

## Development

- `swift build` — build the package
- `swift test` — run all tests
- `swift test --filter <TestName>` — run a single test/suite
- `swift-format format --recursive -i .` — format all sources in place
- `swift-format lint -s --recursive .` — lint sources

## License

MetalMath is available under the MIT license. See [LICENSE](LICENSE) for
details.
