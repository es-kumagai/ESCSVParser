//
//  Converter.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

/// This struct used for convert some raw columns to any columns type that conforms to 'RawColumnConvertible' protocol.
/// This struct is implicitly used in 'columns' methods of 'RawLine' struct.
public struct Converter<TUPLE> {
	
	var values:TUPLE?
	
	init(_ values:TUPLE) {
		
		self.values = values
	}
	
	public func into<R>(generate:(TUPLE)->R) -> R {
		
		return self.values.map(generate)!
	}
}
