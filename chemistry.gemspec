# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chemistry/version'

Gem::Specification.new do |gem|
  gem.name          = "chemistry"
  gem.version       = Chemistry::VERSION
  gem.authors       = ["Isaac Sanders"]
  gem.email         = ["isaac@isaacbfsanders.com"]
  gem.description   = %q{Chemistry is a toolkit for dealing with compounds}
  gem.summary       = %q{Chemistry is a toolkit for dealing with compounds}
  gem.homepage      = "http://isaacbfsanders.com/chemistry"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
