# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = "fit_js"
  s.version     = "0.94.10"
  s.summary     = "Javascript Wrapper for FIT Files"
  s.description = "The javascript library for the Garmin FIT file format"
  s.authors     = ["Justin Dunn"]
  s.email       = "axeouse@gmail.com"
  s.files       = ["lib", "app/assets/javascript"]
  s.homepage    =
    "https://rubygems.org/gems/fit_js"
  s.license       = "MIT"
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_runtime_dependency 'autoprefixer-rails', '~> 9.1', '>= 9.1.0'
end