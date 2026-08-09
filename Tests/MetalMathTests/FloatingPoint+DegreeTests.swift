import MetalMath
import Testing

struct FloatingPointDegreeTests {
  @Test func radians() {
    expectEqual(0.0.radian, 0.0, accuracy: 0.001)
    expectEqual(45.0.radian, 0.7854, accuracy: 0.001)
    expectEqual(90.radian, 1.5708, accuracy: 0.001)
    expectEqual(135.radian, 2.3561, accuracy: 0.001)
    expectEqual(180.radian, 3.1416, accuracy: 0.001)
    expectEqual(270.radian, 4.71239, accuracy: 0.001)
  }

  @Test func degrees() {
    expectEqual(0.0.degree, 0.0, accuracy: 0.1)
    expectEqual(0.7854.degree, 45.0, accuracy: 0.1)
    expectEqual(1.5708.degree, 90, accuracy: 0.1)
    expectEqual(2.3561.degree, 135, accuracy: 0.1)
    expectEqual(3.1416.degree, 180, accuracy: 0.1)
    expectEqual(4.71239.degree, 270, accuracy: 0.1)
  }
}
