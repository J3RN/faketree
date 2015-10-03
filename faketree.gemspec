# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faketree/version'

Gem::Specification.new do |spec|
  spec.name          = "faketree"
  spec.version       = Faketree::VERSION
  spec.authors       = ["Jonathan Arnett"]
  spec.email         = ["jonarnett90@gmail.com"]

  spec.summary       = %q{Make a fake tree of documents with for your test suite}
  spec.description   = %q{FakeTree utilizes FakeFS to create a fake tree of documents for your tests.}
  spec.homepage      = "https://github.com/j3rn/faketree"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "fakefs", "~> 0.6"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
