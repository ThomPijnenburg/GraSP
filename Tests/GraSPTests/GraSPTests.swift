import XCTest
@testable import GraSP

final class GraSPTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GraSP().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
