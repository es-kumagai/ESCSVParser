#!/usr/bin/swift

import Darwin.C

let startCode = UnicodeScalar("A").value
let endCode = UnicodeScalar("Z").value

var results = [String]()

results += ["extension RawLine {"]

for j in startCode ... endCode {
	
	var parameters = [String]()
	var arguments = [String]()
	var tuples = [String]()
	var values = [String]()
	
	for (i, char) in (startCode ... j).enumerate() {
		
		let typeName = String(UnicodeScalar(char))
		let valueName = typeName.lowercaseString
		
		let argumentPrefix = (i == 0 ? "" : "_ ")
		
		parameters.append("\(typeName):RawColumnConvertible")
		arguments.append("\(argumentPrefix)\(valueName):Int")
		tuples.append("\(typeName)")
		values.append("self.column(\(valueName)) as \(typeName)\(typeSuffix)")
	}
	
	let params = ", ".join(parameters)
	let args = ", ".join(arguments)
	let tups = ", ".join(tuples)
	let vals = ", ".join(values)
	
	results += [""]
	results += ["\tpublic func columns<\(params)>(\(args)) throws -> Converter<(\(tups))> {"]
	results += [""]
	results += ["\t\treturn try Converter((\(vals)))"]
	results += ["\t}"]
}

results += ["}"]

let code = "\n".join(results)

print(code)
