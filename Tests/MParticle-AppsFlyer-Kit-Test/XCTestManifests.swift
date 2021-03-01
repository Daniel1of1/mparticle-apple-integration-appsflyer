import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(mparticle_apple_integration_appsflyerTests.allTests),
    ]
}
#endif
