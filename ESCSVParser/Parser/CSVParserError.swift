//
//  CSVParserError.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

public enum CSVParserError : ErrorType {
	
	case ConvertError(String)
	case ParseError(String)
}

public struct FromRawColumnError : ErrorType {
	
	public var reason:String?
	
	public init() {
		
		self.reason = nil
	}
	
	public init(reason: String) {
		
		self.reason = reason
	}
}
