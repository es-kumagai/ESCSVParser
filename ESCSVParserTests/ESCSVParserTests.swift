//
//  ESCSVParserTests.swift
//  ESCSVParserTests
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import XCTest
@testable import ESCSVParser

class ESCSVParserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParseFile1() {

		do {

			let path = NSBundle(forClass: self.dynamicType).pathForResource("Sample1", ofType: "csv")!
			let csv = try CSV<Sample1Row>(path: path)
			
			XCTAssertEqual(csv.count, 5)
			
			let row1 = csv[1]
			let row2 = csv[2]
			let row3 = csv[3]
			let row4 = csv[4]
			let row5 = csv[5]
			
			XCTAssertEqual(row1.country, "日本国")
			XCTAssertEqual(row1.capital, "東京")
			XCTAssertEqual(row1.population, 127767944)
			XCTAssertNil(row1.favolite)
			
			XCTAssertEqual(row2.country, "アメリカ合衆国")
			XCTAssertEqual(row2.capital, "ワシントン")
			XCTAssertEqual(row2.population, 300007997)
			XCTAssertNotNil(row2.favolite)
			
			XCTAssertEqual(row3.country, "日本国")
			XCTAssertEqual(row3.capital, "東京")
			XCTAssertEqual(row3.population, 127767944)
			XCTAssertNil(row3.favolite)
			
			XCTAssertEqual(row4.country, "日本国")
			XCTAssertEqual(row4.capital, "東京")
			XCTAssertEqual(row4.population, 127767944)
			XCTAssertNil(row4.favolite)
			
			XCTAssertEqual(row5.country, "日本国")
			XCTAssertEqual(row5.capital, "東\"京")
			XCTAssertEqual(row5.population, 127767944)
			XCTAssertNil(row5.favolite)
		}
		catch CSVParserError.ParseError(let message) {
			
			XCTFail(message)
		}
		catch CSVParserError.ConvertError(let message) {
			
			XCTFail(message)
		}
		catch {
			
			XCTFail(String(reflecting: error))
		}
    }
}
