# AGENTS.md

MetalMath: a zero-dependency SwiftPM library of extensions on `simd_float4x4`, `SIMD3`, and `FloatingPoint` for Metal-style 3D math.

## Commands

- `swift build` — build
- `swift test --filter <TestName>` — run one test/suite (Swift Testing names, e.g. `Float4x4RotationTests.rotateYAround`)

### Verification

Run all of these on every code change, in order:

- `swift-format format --recursive -i .` — format all sources in place
- `swift-format lint -s --recursive .` — lint (strict mode)
- `swift test` — run all tests

`swift-format` has no repo config file, so it runs with default rules. No CI is configured.

## Conventions

- Tests use **Swift Testing** (`import Testing`, `@Test`), not XCTest.
- For float/SIMD comparisons, use the `expectEqual` helpers in `Tests/MetalMathTests/Expectations.swift` (default accuracy 0.001) instead of raw `#expect(a == b)`.
- All public API is extensions on stdlib/simd types, marked `@inlinable public`. One concept per file, named `Type+Feature.swift`, mirrored by `Type+FeatureTests.swift`.
- Angles are in radians; `.radian`/`.degree` converters live in `FloatingPoint+Degree.swift`.
- Matrices are column-major (simd convention): `simd_float4x4(col0, col1, col2, col3)`, with translation in the last column.
