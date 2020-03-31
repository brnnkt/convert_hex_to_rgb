lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "convert_hex_to_rgb/version"

Gem::Specification.new do |spec|
  spec.name          = "convert_hex_to_rgb"
  spec.version       = ConvertHexToRgb::VERSION
  spec.authors       = ["brnnkt"]
  spec.email         = ["brnnkt@gmail.com"]

  spec.summary       = "convert_hex_to_rgb is a Ruby library to provide basic HEX to RGB color conversion."
  spec.description   = "convert_hex_to_rgb is a Ruby library to provide basic HEX to RGB color conversion."
  spec.homepage      = "https://theglitchy.com"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brnnkt/convert_hex_to_rgb"
  spec.metadata["changelog_uri"]   = "https://github.com/brnnkt/convert_hex_to_rgb/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"
end
