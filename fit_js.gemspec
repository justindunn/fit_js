lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fitjs/version'

Gem::Specification.new do |s|
  s.name        = "fit_js"
  s.version     = Fitjs::VERSION
  s.summary     = "Javascript Wrapper for FIT Files"
  s.description = "The javascript library for the Garmin FIT file format"
  s.authors     = ["Justin Dunn"]
  s.email       = "axeouse@gmail.com"
  s.homepage    = "https://github.com/justindunn/fit_js"
  s.license     = "MIT"


  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.8"
  s.add_development_dependency "rake", "~> 10.0"
end