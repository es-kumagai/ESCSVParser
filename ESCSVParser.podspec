Pod::Spec.new do |s|

	s.name         = "ESCSVParser"
	s.version      = "0.0.1"
	s.summary      = "A type-safe CSV parser module for swift 2.0."
	s.description  = <<-DESC
	ESCSVParser is a type-safe CSV parser module for Swift 2.

	You can write data type which use as a CSV row by simple code,
	and create an array of the data type from a CSV file easily.
	DESC
	s.homepage     = "https://github.com/EZ-NET/ESCSVParser"
	s.license      = "MIT"
	s.author             = { "Tomohiro Kumagai" => "tomohiro@ez-style.jp" }
	s.social_media_url   = "https://twitter.com/es_kumagai"

	s.ios.deployment_target = "8.0"
	s.osx.deployment_target = "10.9"
	s.source       = { :git => "https://github.com/EZ-NET/ESCSVParser.git", :tag => s.version }
	s.source_files  = "ESCSVParser/**/*.swift"
	s.requires_arc = true

end
