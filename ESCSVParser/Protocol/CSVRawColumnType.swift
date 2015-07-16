//
//  CSVRawColumnType.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

// MARK: Integer Type

/// You can able to convert a raw column data to any signed integer types.
extension RawColumnConvertible where Self : SignedIntegerType {
	
	public static func fromRawColumn(rawColumn: String) -> Self? {
		
		return IntMax(rawColumn).map(self.init)
	}
}

/// You can able to convert a raw column data to any signed integer types.
extension RawColumnConvertible where Self : UnsignedIntegerType {
	
	public static func fromRawColumn(rawColumn: String) -> Self? {
		
		return UIntMax(rawColumn).map(self.init)
	}
}

extension Int : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension Int8 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension Int16 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension Int32 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension Int64 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension UInt : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension UInt8 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension UInt16 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension UInt32 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension UInt64 : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

// MARK: Floating number type

public protocol ASCIIRepresentation {
	
	init?(_ text: String)
}

extension RawColumnConvertible where Self : ASCIIRepresentation {
	
	public static func fromRawColumn(rawColumn: String) -> Self? {
		
		return self.init(rawColumn)
	}
}

extension Double : ASCIIRepresentation {
	
}

extension Float : ASCIIRepresentation {
	
}

extension Double : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

extension Float : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
}

// MARK: String Type

extension String : RawColumnConvertible {
	
	public static func fromRawColumn(rawColumn: String) -> String? {
		
		return rawColumn
	}
}

// MARK: Boolean Type

extension Bool : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
	public static func fromRawColumn(rawColumn: String) -> Bool? {
		
		switch rawColumn.lowercaseString {
			
		case "true", "yes":
			return true
			
		case "false", "no":
			return false
			
		default:
			return nil
		}
	}
}

// MARK: Optional Type

extension Optional : RawColumnConvertible {
	
	public static func fromRawColumn(rawColumn: String) -> Optional? {
		
		if let type = T.self as? RawColumnNullable.Type {
			
			if type.isRawColumnNull(rawColumn) {
				
				return Optional?(nil)
			}
		}
		
		if let type = T.self as? RawColumnConvertible.Type {
			
			if let value = type.fromRawColumn(rawColumn) as? T {
				
				return Optional(value)
			}
			else {
				
				return nil
			}
		}
		
		return nil
	}
}
