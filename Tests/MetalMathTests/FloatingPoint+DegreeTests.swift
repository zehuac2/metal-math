import MetalMath
import Testing

struct FloatingPointDegreeTests {
  @Test func radians() {
    expectEqual(0.0.radians, 0.0, accuracy: 0.001)
    expectEqual(45.0.radians, 0.7854, accuracy: 0.001)
    expectEqual(90.radians, 1.5708, accuracy: 0.001)
    expectEqual(135.radians, 2.3561, accuracy: 0.001)
    expectEqual(180.radians, 3.1416, accuracy: 0.001)
    expectEqual(270.radians, 4.71239, accuracy: 0.001)
  }

  @Test func degrees() {
    expectEqual(0.0.degrees, 0.0, accuracy: 0.1)
    expectEqual(0.7854.degrees, 45.0, accuracy: 0.1)
    expectEqual(1.5708.degrees, 90, accuracy: 0.1)
    expectEqual(2.3561.degrees, 135, accuracy: 0.1)
    expectEqual(3.1416.degrees, 180, accuracy: 0.1)
    expectEqual(4.71239.degrees, 270, accuracy: 0.1)
  }
}
