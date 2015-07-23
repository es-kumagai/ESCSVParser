#!/usr/bin/swift

import Darwin.C

let startCode = UnicodeScalar("A").value
let endCode = UnicodeScalar("Z").value

var results = [String]()

results += ["extension RawLine {"]

for j in startCode ... endCode {
	
	var parameters = [String]()
	var parameterConditions = [String]()
	var arguments = [String]()
	var tuples = [String]()
	var values = [String]()
	
	parameters.append("Result")
	
	for (i, char) in (startCode ... j).enumerate() {
		
		let typeName = String(UnicodeScalar(char))
		let valueName = typeName.lowercaseString
		
		let argumentPrefix = (i == 0 ? "from " : "_ ")
		
		parameters.append("\(typeName):RawColumnConvertible")
		parameterConditions.append("\(typeName) == \(typeName).ConvertedType")
		arguments.append("\(argumentPrefix)\(valueName):Int")
		tuples.append("\(typeName)")
		values.append("self.column(\(valueName)) as \(typeName)")
	}
	
	let params = ", ".join(parameters)
	let paramConditions = ", ".join(parameterConditions)
	let args = ", ".join(arguments)
	let tups = ", ".join(tuples)
	let vals = ", ".join(values)
	
	results += [""]
	results += ["\tpublic func make<\(params) where \(paramConditions)>(creation:(\(tups))->Result)(\(args)) throws -> Result {"]
	results += [""]
	results += ["\t\treturn try Converter((\(vals))).into(creation)"]
	results += ["\t}"]
}

results += ["}"]

let code = "\n".join(results)

print(code)
