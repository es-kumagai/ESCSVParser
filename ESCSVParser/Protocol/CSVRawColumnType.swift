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
	
	public static func fromRawColumn(rawColumn: RawColumn) throws -> Self {
		
        guard let result = IntMax(rawColumn.value).map(self.init) else {
            
            throw CSVParserError.FromRawColumnError
        }
        
        return result
	}
}

/// You can able to convert a raw column data to any signed integer types.
extension RawColumnConvertible where Self : UnsignedIntegerType {
	
	public static func fromRawColumn(rawColumn: RawColumn) throws -> Self {
		
        guard let result = UIntMax(rawColumn.value).map(self.init) else {
            
            throw CSVParserError.FromRawColumnError
        }
        
        return result
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
	
	public static func fromRawColumn(rawColumn: RawColumn) throws -> Self {
		
        guard let result = self.init(rawColumn.value) else {
            
            throw CSVParserError.FromRawColumnError
        }
        
        return result
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
	
	public static func fromRawColumn(rawColumn: RawColumn) -> String {
		
		return rawColumn.value
	}
}

// MARK: Boolean Type

extension Bool : RawColumnConvertible, RawColumnNullableAndConsiderEmptyAsNull {
	
	public static func fromRawColumn(rawColumn: RawColumn) throws -> Bool {
		
		switch rawColumn.value.lowercaseString {
			
		case "true", "yes", "1":
			return true
			
		case "false", "no", "0":
			return false
			
		default:
			throw CSVParserError.FromRawColumnError
		}
	}
}

// MARK: Optional Type

public protocol RawColumnConvertibleOptional : RawColumnConvertible, NilLiteralConvertible {
	
}

extension Optional : RawColumnConvertibleOptional, RawColumnNullable {

	public typealias ValueType = Wrapped
	
	public static func isRawColumnNull(rawColumn: RawColumn) -> Bool {
		
		guard let wrappedType = Wrapped.self as? RawColumnNullable.Type else {
			
			return false
		}
		
		return wrappedType.isRawColumnNull(rawColumn)
	}
	
	public static func fromRawColumn(rawColumn: RawColumn) throws -> Optional {
		
		if let type = Wrapped.self as? RawColumnNullable.Type {
			
			if type.isRawColumnNull(rawColumn) {
				
				return nil
			}
		}
		
		guard let wrappedType = Wrapped.self as? _RawColumnConvertible.Type else {
			
			throw CSVParserError.FromRawColumnError
		}
		
		return try Optional(wrappedType._fromRawColumn(rawColumn) as! Wrapped)
	}
}
