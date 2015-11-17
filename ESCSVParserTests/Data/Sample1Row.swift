//
//  Sample1Row.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import ESCSVParser

struct Sample1Row : CSVRowRepresentable {
	
	var country:String
	var capital:String
	var population:Int
	var favolite:Bool?
	
	static func fromRawLine(line: RawLine) throws -> Sample1Row {
		
        // FIXME: make の段階でプロトコルを RawColumnConvertible に縛ってしまうため RawColumnConvertibleOptional を想定したコードを処理できない。
        // FIXME: RawColumnConvertibleOptional にも対応した make を作る手もあるが、膨大になりそう。
		return try line.make(Sample1Row.init)(from: 1, 2, 3, 4)
	}
}
