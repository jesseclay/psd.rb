# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'psd/version'

Gem::Specification.new do |gem|
  gem.name          = "psd"
  gem.version       = Psd::VERSION
  gem.authors       = ["Ryan LeFevre"]
  gem.email         = ["ryan@layervault.com"]
  gem.description   = %q{Parse Photoshop save files with ease}
  gem.summary       = %q{General purpose library for parsing Photoshop save files}
  gem.homepage      = "http://github.com/layervault/psd.rb"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "bindata"
end
