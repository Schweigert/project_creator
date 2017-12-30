# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "project_creator/version"

Gem::Specification.new do |spec|
  spec.name          = "project_creator"
  spec.version       = ProjectCreator::VERSION
  spec.authors       = ["Marlon Henry Schweigert"]
  spec.email         = ["fleyhe0@gmail.com"]

  spec.summary       = %q{Create a folder project from a hash}
  spec.homepage      = "http://www.github.com/schweigert/project_creator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
