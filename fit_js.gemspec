require "fitjs/rails/version"

Gem::Specification.new do |s|
  s.name        = "fit_js"
  s.version     = Fitjs::Rails::VERSION
  s.summary     = "Javascript Wrapper for FIT Files"
  s.description = "The javascript library for the Garmin FIT file format"
  s.authors     = ["Justin Dunn"]
  s.email       = "axeouse@gmail.com"
  s.files       = ["lib", "app/assets/javascript"]
  s.homepage    =
    "https://rubygems.org/gems/fit_js"
  s.license       = "MIT"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
end