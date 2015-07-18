//
//  CSV.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

/// This structure represents the entire CSV data.
/// Generic parameter of 'CSVRow' is type of each row data.
public struct CSV<Row:CSVRowRepresentable> {
	
	var rows:[Row]
	
	/// Create a instance that have csv data loaded from 'path'.
	public init(path:String) throws {
		
		try self.init(path:path, skipHeader:true)
	}
	
	/// Create a instance that have csv data loaded from 'path'.
	/// If you set 'skipHeader' to true, the first line of the csv data is ignored.
	public init(path:String, skipHeader:Bool) throws {
		
		self.rows = try CSVParser.loadFromPath(path, skipHeader: skipHeader)
	}
}

extension CSV : CollectionType {
	
	public var startIndex:Int {
		
		return self.rows.startIndex + 1
	}
	
	public var endIndex:Int {
		
		return self.rows.endIndex + 1
	}
	
	public subscript(line:Int) -> Row {
		
		return self.rows[line - 1]
	}
}
