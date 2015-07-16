//
//  Sample1Row.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import ESCSVParser

struct Sample1Row : CSVRow {
	
	var country:String
	var capital:String
	var population:Int
	var favolite:Bool?
	
	static func fromRawLine(line: RawLine) throws -> Sample1Row {
		
		return try line.columns(1, 2, 3, 4).into(Sample1Row.init)
	}
}
