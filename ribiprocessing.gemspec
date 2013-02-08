# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ribiprocessing/version'

Gem::Specification.new do |gem|
  gem.name          = "ribiprocessing"
  gem.version       = Ribiprocessing::VERSION
  gem.authors       = ["unsymbol"]
  gem.email         = ["hello@philipcunningham.org"]
  gem.description   = %q{Simpler Ruby Processing}
  gem.summary       = %q{A really slim layer between Ruby and Processing.}
  gem.homepage      = "https://github.com/unsymbol/ribiprocessing"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
