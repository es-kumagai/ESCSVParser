//
//  CSVRowRepresentable.swift
//  ESCSVParser
//
//  Created by Tomohiro Kumagai on H27/07/15.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

/// This protocol is necessary to conform to the type that expresses the CSV line.
/// A type conforming to this protocol can be used as a row of the 'CSV' structure.
///
/// for example,
///
///		struct SiteInfo : CSVRowRepresentable {
///
///			var siteID:Int
///			var caption:String
///			var detail:String?
///
///			static func fromRawLine(line: RawLine) throws -> SiteInfo {
///
///				return try line.make(SiteInfo.init)(from: 1, 2, 3)
///			}
///		}
///
/// You can able to use type conforms to 'RowColumnConvertible' protocol,
/// or to use Optional types that treat a type conforms to 'RowColumnConvertible' protocol or to 'RawColumnConvertible' protocol and 'RawColumnNullable' protocol.
///
public protocol CSVRowRepresentable {
	
	static func fromRawLine(line:RawLine) throws -> Self
}
