//
//  CSVParser.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import Foundation

/// This class is a CSV parser.
internal class CSVParser {
	
	/// load a csv file from 'path'.
	/// This method returns an array of the csv data parsed by each line.
	static func loadFromPath<Row:CSVRowRepresentable>(path:String, skipHeader:Bool) throws -> [Row] {
		
		var results = [Row]()
		
		let rawData = try String(contentsOfFile: path)
		let lines = rawData.componentsSeparatedByString(self.Newline)
		
		for line in lines.enumerate() {

			guard !line.element.isEmpty else {
				
				continue
			}
			
			if skipHeader && line.index == 0 {
				
				continue
			}

			results += try [ Row.fromRawLine(self.parseRawLine(line.element)) ]
		}
		
		return results
	}
}

extension CSVParser {
	
	static let Quote:Character = "\u{0022}"
	static let Comma:Character = "\u{002C}"
	static let Newline:String = "\u{000D}\u{000A}"
	
	typealias ParseIndex = String.CharacterView.Index
	typealias ParseCharacter = String.CharacterView.Generator.Element
	
	typealias ColumnLocation = (column:RawColumn, start:ParseIndex,end:ParseIndex,next:ParseIndex?)
	
	static func parseRawLine(line:String) throws -> RawLine {
		
		guard !line.isEmpty else {
			
			return RawLine(columns: [])
		}
		
		var results = [RawColumn]()
		var location:ParseIndex = line.startIndex
		
		while let found = try self.parseRawColumn(line, location: location) {
			
			results += [found.column]
			
			guard found.next != nil else {
				
				break
			}
			
			location = found.next!
		}
		
		return RawLine(columns: results)
	}
	
	static func isQuoteCharacter(line:String, atIndex index:ParseIndex) -> Bool {
		
		guard index != line.endIndex else {
			
			return false
		}
		
		return line[index] == self.Quote
	}
	
	static func isCommaCharacter(line:String, atIndex index:ParseIndex) -> Bool {
		
		guard index != line.endIndex else {
			
			return false
		}
		
		return line[index] == self.Comma
	}
	
	static func parseRawColumn(line:String, location:ParseIndex) throws -> ColumnLocation? {
		
		guard location != line.endIndex else {
			
			return ColumnLocation(column: RawColumn(), start: line.endIndex, end: line.endIndex, next: nil)
		}
		
		if self.isQuoteCharacter(line, atIndex: location) {
			
			return try self.parseRawQuotedColumn(line, location: location)
		}
		else {
			
			return try self.parseRawNonQuotedColumn(line, location: location)
		}
	}
	
	static func parseRawQuotedColumn(line:String, location sourceLocation:ParseIndex) throws -> ColumnLocation {
		
		let start = sourceLocation.successor()
		
		for var location = start; location != line.endIndex; ++location {
			
			if self.isQuoteCharacter(line, atIndex: location) {
				
				guard self.isQuoteCharacter(line, atIndex: location.successor()) else {
					
					let end = location
					let next = location.successor()

					let column = RawColumn((line[start..<end] as NSString).stringByReplacingOccurrencesOfString("\"\"", withString: "\""))

					if next == line.endIndex {
						
						return (column: column, start:start, end:end, next:nil)
					}
					else if self.isCommaCharacter(line, atIndex: next) {
						
						return (column: column, start:start, end:end, next:next.successor())
					}
					else {
						
						throw CSVParserError.ParseError("Comma not found at \(next)")
					}
				}
				
				++location
			}
		}
		
		throw CSVParserError.ParseError("Invalid quote character found at \(sourceLocation)")
	}
	
	static func parseRawNonQuotedColumn(line:String, location sourceLocation:ParseIndex) throws -> ColumnLocation {
		
		let start = sourceLocation
		
		guard !self.isCommaCharacter(line, atIndex: start) else {
			
			return (column: RawColumn(), start: start, end:start, next: start.successor())
		}
		
		for var location = start; location != line.endIndex; ++location {
			
			guard !self.isCommaCharacter(line, atIndex: location) else {
				
				let end = location
				let column = RawColumn.fromString(line, ofRange: start ..< end)

				return (column: column, start:start, end:end, next:location.successor())
			}
		}
		
		return (column: RawColumn.fromString(line, ofRange: start ..< line.endIndex), start:start, end:line.endIndex, next:nil)
	}
}