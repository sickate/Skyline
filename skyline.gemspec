# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skyline/version'

Gem::Specification.new do |spec|
  spec.name          = "skyline"
  spec.version       = Skyline::VERSION
  spec.authors       = ["sickcate"]
  spec.email         = ["iamzhutuo@gmail.com"]
  spec.summary       = %q{A minimal event-driven Rack HTTP server}
  spec.description   = %q{It's mainly stolen from Rack server "Cramp".}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.rubyforge_project = "Skyline"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('activesupport',   '~> 4.2.0', '>= 4.2.0')
  spec.add_dependency('rack',            '~> 1.6.0', '>= 1.6.0')
  spec.add_dependency('eventmachine',    '~> 1.0.9')
  spec.add_dependency('faye-websocket',  '~> 0.9.2')
  spec.add_dependency('thor',            '~> 0.19.0')

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
