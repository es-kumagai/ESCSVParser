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
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Self? {
		
		return IntMax(rawColumn.value).map(self.init)
	}
}

/// You can able to convert a raw column data to any signed integer types.
extension RawColumnConvertible where Self : UnsignedIntegerType {
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Self? {
		
		return UIntMax(rawColumn.value).map(self.init)
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
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Self? {
		
		return self.init(rawColumn.value)
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
	
	public static func fromRawColumn(rawColumn: RawColumn) -> String? {
		
		return rawColumn.value
	}
}

// MARK: Boolean Type

extension Bool : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Bool? {
		
		switch rawColumn.value.lowercaseString {
			
		case "true", "yes", "1":
			return true
			
		case "false", "no", "0":
			return false
			
		default:
			return nil
		}
	}
}

// MARK: Optional Type

public protocol RawColumnConvertibleOptional : RawColumnConvertible {
	
}

extension RawColumnConvertibleOptional {
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Self? {
		
		return nil
	}
}

extension Optional : RawColumnConvertibleOptional {
	
}

extension Optional where T : RawColumnConvertible {

	public static func fromRawColumn(rawColumn: RawColumn) -> Optional<T>? {
		
		if let type = T.self as? RawColumnNullable.Type {
			
			if type.isRawColumnNull(rawColumn) {
				
				return Optional?(nil)
			}
		}
		
		if let value = T.fromRawColumn(rawColumn) as? T {
			
			return Optional(value)
		}
		else {
			
			return nil
		}
	}
}
