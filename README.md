# ESCSVParser

ESCSVParser is a type-safe CSV parser module for Swift 2.

You can write data type which use as a CSV row by simple code, and create an array of the data type from a CSV file easily.

> This module is highly inspired by [Himotoki](https://github.com/ikesyo/Himotoki) which is a type-safe JSON decoding library !

## Usage

### 1. Define a data type

```swift
struct StatisticalData : CSVRowRepresentable {
	
	var country:String
	var capital:String
	var population:Int
	var favolite:Bool?
	
	static func fromRawLine(line: RawLine) throws -> StatisticalData {
		
		return try line.make(StatisticalData.init)(from: 1, 2, 3, 4)
	}
}
```

1. **Create a type** which conforms to `CSVRowRepresentable` protocol.
2. **Implement properties** to the type. If the type of the property is an **optional type**, the property will assign `nil` if it meets [certain condition](#OptionalSupport) (e.g. empty string to `Int?`).
4. Implement an initializer if necessary. **Normally** use the default initializer.
5. **Implement `fromRawLine` method**. In this method, you must create an instance of self type and return it. At this time, you can use raw csv line data which having `line` argument. **By using `make` method** in `line`, you can pick up raw columns by column index and convert to values of native type.


### 2. Create a CSV data from a CSV file.

```swift
let csv = try! CSV<StatisticalData>(path: path)
```

1. Use `CSV` type which specified RowType by generic parameter (e.g. CSV<StatisticalData>).
2. Call the initializer with CSV file path, you will get the data by an array of RowType.

### 3. Use the CSV data.

```swift
let raw1:StatisticalData = csv[1]

XCTAssertEqual(raw1.country, "Japan")
XCTAssertEqual(raw1.population, 127767944)
```
1. you can retrieve a row data in the CSV data by index which starting with 1.

## Supported CSV format

* A csv file encoding by UTF-8.
* Columns are written in a natural text or a quoted text by double quotations.

```csv
Country,Capital,Population,favolite
Japan,Tokyo,127767944,yes
"U.S.A",Washington,"300007997",no
```

## Supported CSV Column type

You can assign types that conforms to `RawColumnConvertible` protocol to properties in a type for CSV row.

It is already conforms that types `Int`, `Int8`, `Int16`, `Int32`, `Int64`, `UInt`, `UInt8`, `UInt16`, `UInt32`, `UInt64`, `String`, `Double`, `Float`, `Float80`, `Bool` and `Optional<T>` which these type have.

> You can make any CSV Column type using `RawColumnConvertible `.

### Custom type support

If you want to other types, you will create a type which conforms to `RawColumnConvertible` protocol. A type which conforms to this protocol and implement `fromRawColumn` method can convert from a raw column value.

```swift
extension Bool : RawColumnConvertible {
	
	public static func fromRawColumn(rawColumn: RawColumn) -> Bool {
		
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
```

> It needs to throw `CSVParserError.FromRawColumnError` if the type cannot convert from `rawColumn` value.

### <a name="OptionalSupport">Optional support</a>

If you want to treat the type in `Optional<T>`, the type will also need to conforms to `RawColumnNullable` protocol. A type which conforms to this protocol and implement `isRawColumnNull` method, you can specify the conditions which the value of the type will be convert to `nil`.

```swift
extension Bool : RawColumnNullable {

	static func isRawColumnNull(rawColumn:RawColumn) -> Bool {
	
		return rawColumn.isEmpty
	}
}
```

## Requirements

* Swift 2.1 (Xcode 7.1)
* iOS 8.0 or later / OS X 10.9 or later

## Installation

Add following line to your Podfile and run `pod install`.

```ruby
pod 'ESCSVParser', :git => 'https://github.com/EZ-NET/ESCSVParser.git'
```

## License

ESCSVParser is released under the [MIT License](LICENSE.md).
