import MetalMath
import XCTest

final class FloatingPointDegreeTests: XCTestCase {
  func testRadian() {
    XCTAssertEqual(0.0.radian, 0.0, accuracy: 0.001)
    XCTAssertEqual(45.0.radian, 0.7854, accuracy: 0.001)
    XCTAssertEqual(90.radian, 1.5708, accuracy: 0.001)
    XCTAssertEqual(135.radian, 2.3561, accuracy: 0.001)
    XCTAssertEqual(180.radian, 3.1416, accuracy: 0.001)
    XCTAssertEqual(270.radian, 4.71239, accuracy: 0.001)
  }

  func testDegree() {
    XCTAssertEqual(0.0.degree, 0.0, accuracy: 0.1)
    XCTAssertEqual(0.7854.degree, 45.0, accuracy: 0.1)
    XCTAssertEqual(1.5708.degree, 90, accuracy: 0.1)
    XCTAssertEqual(2.3561.degree, 135, accuracy: 0.1)
    XCTAssertEqual(3.1416.degree, 180, accuracy: 0.1)
    XCTAssertEqual(4.71239.degree, 270, accuracy: 0.1)
  }
}
