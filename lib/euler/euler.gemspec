
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "euler/version"

Gem::Specification.new do |s|
  s.name           = "euler"
  s.version        = Euler::VERSION
  s.author         = "Mattia Guazzaloca"
  s.email          = "mattia.guazza@gmail.com"

  s.summary        = "Utility algorithms library"
  s.description    = "Utility algorithms library"
  s.license        = "MIT"

  s.files          = ["lib/**/*"]
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
