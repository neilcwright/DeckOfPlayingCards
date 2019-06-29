import XCTest
@testable import DeckOfPlayingCards

final class DeckOfPlayingCardsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DeckOfPlayingCards().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
