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
  s.homepage    =
    "https://rubygems.org/gems/fit_js"
  s.license       = "MIT"


  # Dummy Rails app dependencies
  s.add_development_dependency 'actionpack', '>= 4.1.5'
  s.add_development_dependency 'activesupport', '>= 4.1.5'
  s.add_development_dependency 'json', '>= 1.8.1'
  s.add_development_dependency 'sprockets-rails', '>= 2.1.3'
  s.add_development_dependency 'jquery-rails', '>= 3.1.0'
  s.add_development_dependency 'slim-rails'
  s.add_development_dependency 'uglifier'

  s.add_runtime_dependency 'autoprefixer-rails', '~> 9.1', '>= 9.1.0'
  s.files      = `git ls-files`.split("\n")
end