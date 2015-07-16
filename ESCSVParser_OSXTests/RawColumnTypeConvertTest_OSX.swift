//
//  RawColumnTypeConvertTest.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/16.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import XCTest
@testable import ESCSVParser

class RawColumnTypeConvertTest_OSX: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConvert_OSX() {

		XCTAssertEqual(Float80.fromRawColumn("53.53")!, 53.53)
		XCTAssertEqual((Float80?.fromRawColumn("53.53")!)!, 53.53)
	}
}
