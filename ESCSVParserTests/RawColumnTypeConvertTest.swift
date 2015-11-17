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
		
		XCTAssertEqual(try? Int.fromRawColumn("-5"), -5)
		XCTAssertEqual(try? Int8.fromRawColumn("3"), 3)
		XCTAssertEqual(try? Int16.fromRawColumn("33"), 33)
		XCTAssertEqual(try? Int32.fromRawColumn("13"), 13)
		XCTAssertEqual(try? Int64.fromRawColumn("37"), 37)
		XCTAssertEqual(try? UInt.fromRawColumn("5"), 5)
		XCTAssertEqual(try? UInt8.fromRawColumn("3"), 3)
		XCTAssertEqual(try? UInt16.fromRawColumn("33"), 33)
		XCTAssertEqual(try? UInt32.fromRawColumn("13"), 13)
		XCTAssertEqual(try? UInt64.fromRawColumn("37"), 37)

		XCTAssertNotNil(try? Int.fromRawColumn("-5"))
		XCTAssertNil(try? UInt.fromRawColumn("-5"))

		XCTAssertEqual(try! Int?.fromRawColumn("-5"), -5)
		XCTAssertEqual(try! Int8?.fromRawColumn("3"), 3)
		XCTAssertEqual(try! Int16?.fromRawColumn("33"), 33)
		XCTAssertEqual(try! Int32?.fromRawColumn("13"), 13)
		XCTAssertEqual(try! Int64?.fromRawColumn("37"), 37)
		XCTAssertEqual(try! UInt?.fromRawColumn("5"), 5)
		XCTAssertEqual(try! UInt8?.fromRawColumn("3"), 3)
		XCTAssertEqual(try! UInt16?.fromRawColumn("33"), 33)
		XCTAssertEqual(try! UInt32?.fromRawColumn("13"), 13)
		XCTAssertEqual(try! UInt64?.fromRawColumn("37"), 37)

		XCTAssertNil(try! Int?.fromRawColumn(""))
		XCTAssertNotNil(try! Int?.fromRawColumn("3"))

		XCTAssertEqual(String.fromRawColumn("ABC"), "ABC")
		XCTAssertEqual(String.fromRawColumn("NULL"), "NULL")
		XCTAssertNotNil(try! String?.fromRawColumn("ABC"))
		XCTAssertNotNil(try! String?.fromRawColumn("NULL"), "String? is not convert to nil automatically.")

		XCTAssertEqual(try? Float.fromRawColumn("12.5"), 12.5)
		XCTAssertEqual(try? Double.fromRawColumn("10"), 10.0)
		XCTAssertEqual(try? Float.fromRawColumn("12.5e2"), 1250)
		XCTAssertNil(try? Double.fromRawColumn("10xx"))
		
		XCTAssertEqual(try! Float?.fromRawColumn("12.5"), 12.5)
		XCTAssertEqual(try! Double?.fromRawColumn("10"), 10.0)

		XCTAssertNil(try! Double?.fromRawColumn(""))
		XCTAssertNotNil(try! Double?.fromRawColumn("3"))
		
		XCTAssertEqual(try? Bool.fromRawColumn("true"), true)
		XCTAssertEqual(try? Bool.fromRawColumn("TRUE"), true)
		XCTAssertEqual(try? Bool.fromRawColumn("Yes"), true)
		XCTAssertEqual(try? Bool.fromRawColumn("false"), false)
		XCTAssertEqual(try? Bool.fromRawColumn("FalSe"), false)
		XCTAssertEqual(try? Bool.fromRawColumn("NO"), false)
		XCTAssertNil(try? Bool.fromRawColumn("XXXX"))
		XCTAssertEqual(try? Bool.fromRawColumn("0"), false)
		XCTAssertEqual(try? Bool.fromRawColumn("1"), true)
		XCTAssertNil(try? Bool.fromRawColumn("2"))
		
		XCTAssertNil(try! Double?.fromRawColumn(""))
		XCTAssertNil(try? Double?.fromRawColumn("3xxx"))
	}
}
