//
//  RawColumnTypeConvertTest.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/16.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import XCTest
@testable import ESCSVParser

class RawColumnTypeConvertTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConvert() {
		
		XCTAssertEqual(Int.fromRawColumn("-5")!, -5)
		XCTAssertEqual(Int8.fromRawColumn("3")!, 3)
		XCTAssertEqual(Int16.fromRawColumn("33")!, 33)
		XCTAssertEqual(Int32.fromRawColumn("13")!, 13)
		XCTAssertEqual(Int64.fromRawColumn("37")!, 37)
		XCTAssertEqual(UInt.fromRawColumn("5")!, 5)
		XCTAssertEqual(UInt8.fromRawColumn("3")!, 3)
		XCTAssertEqual(UInt16.fromRawColumn("33")!, 33)
		XCTAssertEqual(UInt32.fromRawColumn("13")!, 13)
		XCTAssertEqual(UInt64.fromRawColumn("37")!, 37)

		XCTAssertNotNil(Int.fromRawColumn("-5"))
		XCTAssertNil(UInt.fromRawColumn("-5"))

		XCTAssertEqual((Int?.fromRawColumn("-5")!)!, -5)
		XCTAssertEqual((Int8?.fromRawColumn("3")!)!, 3)
		XCTAssertEqual((Int16?.fromRawColumn("33")!)!, 33)
		XCTAssertEqual((Int32?.fromRawColumn("13")!)!, 13)
		XCTAssertEqual((Int64?.fromRawColumn("37")!)!, 37)
		XCTAssertEqual((UInt?.fromRawColumn("5")!)!, 5)
		XCTAssertEqual((UInt8?.fromRawColumn("3")!)!, 3)
		XCTAssertEqual((UInt16?.fromRawColumn("33")!)!, 33)
		XCTAssertEqual((UInt32?.fromRawColumn("13")!)!, 13)
		XCTAssertEqual((UInt64?.fromRawColumn("37")!)!, 37)

		XCTAssertNil(Int?.fromRawColumn("")!)
		XCTAssertNotNil(Int?.fromRawColumn("3")!)

		XCTAssertEqual(String.fromRawColumn("ABC")!, "ABC")
		XCTAssertEqual(String.fromRawColumn("NULL")!, "NULL")
		XCTAssertNotNil(String?.fromRawColumn("ABC")!)
		XCTAssertNotNil(String?.fromRawColumn("NULL")!, "String? is not convert to nil automatically.")

		XCTAssertEqual(Float.fromRawColumn("12.5")!, 12.5)
		XCTAssertEqual(Double.fromRawColumn("10")!, 10.0)
		XCTAssertEqual(Float.fromRawColumn("12.5e2")!, 1250)
		XCTAssertNil(Double.fromRawColumn("10xx"))
		
		XCTAssertEqual((Float?.fromRawColumn("12.5")!)!, 12.5)
		XCTAssertEqual((Double?.fromRawColumn("10")!)!, 10.0)

		XCTAssertNil(Double?.fromRawColumn("")!)
		XCTAssertNotNil(Double?.fromRawColumn("3")!)
		
		XCTAssertEqual(Bool.fromRawColumn("true")!, true)
		XCTAssertEqual(Bool.fromRawColumn("TRUE")!, true)
		XCTAssertEqual(Bool.fromRawColumn("Yes")!, true)
		XCTAssertEqual(Bool.fromRawColumn("false")!, false)
		XCTAssertEqual(Bool.fromRawColumn("FalSe")!, false)
		XCTAssertEqual(Bool.fromRawColumn("NO")!, false)
		XCTAssertNil(Bool.fromRawColumn("XXXX"))
		XCTAssertEqual(Bool.fromRawColumn("0")!, false)
		XCTAssertEqual(Bool.fromRawColumn("1")!, true)
		XCTAssertNil(Bool.fromRawColumn("2"))
		
		XCTAssertNil(Double?.fromRawColumn("")!)
		XCTAssertTrue(Double?.fromRawColumn("3xxx") == nil)
	}
}
