# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry/exercismun/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-exercismun"
  spec.version       = Pry::Exercismun::VERSION
  spec.authors       = ["Darek Nedza"]
  spec.email         = ["nedzadarek@gmail.com"]

  spec.description   = <<-END
Unofficial commands useful while working with exercism.io.
The commands range from testing to fetching next exercises. 
More info/licence on github
END

  spec.summary       = %q{Unofficial commands useful while working with exercism.io}
  spec.homepage      = ""
  spec.license       = "agpl-3.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
