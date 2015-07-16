//
//  CSVRawColumnConvertible.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

/// A type that conforms to this protocol can be converted from raw column string.
/// If you want to use a type as csv column type, the type must be conforms to this protocol.
public protocol RawColumnConvertible {
	
	static func fromRawColumn(rawColumn:String) -> Self?
}

/// When a type that conforms to 'RawColumnConvertible' protocol is uses as Optional,
/// You will handle the raw column value as null in any conditions.
public protocol RawColumnNullable {
	
	static func isRawColumnNull(rawColumn:String) -> Bool
}

/// When a type that conforms to 'RawColumnConvertible' protocol is uses as Optional,
/// You will handle the raw column value as null if raw column is empty string.
public protocol RawColumnNullableAndConsiderEmptyAsNull : RawColumnNullable {
	
	static func isRawColumnNull(rawColumn:String) -> Bool
}

extension RawColumnNullableAndConsiderEmptyAsNull {
	
	public static func isRawColumnNull(rawColumn:String) -> Bool {
		
		return rawColumn.isEmpty
	}
}
