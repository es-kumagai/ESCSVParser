//
//  CSVRawColumnConvertible.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

public struct RawColumn {
	
	public var value:String

	public init() {
	
		self.value = ""
	}
	
	public init(_ value:String) {
		
		self.value = value
	}
	
	public static func fromString(string:String, ofRange range:Range<String.Index>) -> RawColumn {
		
		return RawColumn(string[range])
	}
	
	public var isEmpty:Bool {
		
		return self.value.isEmpty
	}
}

extension RawColumn : CustomStringConvertible {
	
	public var description:String {
		
		return self.value
	}
}

extension RawColumn : StringLiteralConvertible {
	
	public init(extendedGraphemeClusterLiteral value: String) {
		
		self.init(value)
	}
	
	public init(unicodeScalarLiteral value: String) {
		
		self.init(value)
	}
	
	public init(stringLiteral value:String) {
		
		self.init(value)
	}
}

public protocol _RawColumnConvertible {
	
	static func _fromRawColumn(rawColumn:RawColumn) throws -> Any
}

extension _RawColumnConvertible where Self : RawColumnConvertible {
	
	public static func _fromRawColumn(rawColumn:RawColumn) throws -> Any {
		
		return try self.fromRawColumn(rawColumn) as ConvertedType
	}
}

/// A type that conforms to this protocol can be converted from raw column string.
/// If you want to use a type as csv column type, the type must be conforms to this protocol.
public protocol RawColumnConvertible : _RawColumnConvertible {
	
	typealias ConvertedType = Self
	
    /// - throws: CSVParserError.FromRawColumnError raised if `rawColumn` cannot convert to `ConvertedType`.
	static func fromRawColumn(rawColumn:RawColumn) throws -> ConvertedType
}

/// When a type that conforms to 'RawColumnConvertible' protocol is uses as Optional,
/// You will handle the raw column value as null in any conditions.
public protocol RawColumnNullable {
	
	static func isRawColumnNull(rawColumn:RawColumn) -> Bool
}

/// When a type that conforms to 'RawColumnConvertible' protocol is uses as Optional,
/// You will handle the raw column value as null if raw column is empty string.
public protocol RawColumnNullableAndConsiderEmptyAsNull : RawColumnNullable {
	
	static func isRawColumnNull(rawColumn:RawColumn) -> Bool
}

extension RawColumnNullableAndConsiderEmptyAsNull {
	
	public static func isRawColumnNull(rawColumn:RawColumn) -> Bool {
		
		return rawColumn.isEmpty
	}
}
