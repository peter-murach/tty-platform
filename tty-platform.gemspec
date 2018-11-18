# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tty/platform/version'

Gem::Specification.new do |spec|
  spec.name          = "tty-platform"
  spec.version       = TTY::Platform::VERSION
  spec.authors       = ["Piotr Murach"]
  spec.email         = [""]
  spec.summary       = %q{Query methods for detecting different operating systems.}
  spec.description   = %q{Query methods for detecting different operating systems.}
  spec.homepage      = "https://github.com/piotrmurach/tty-platform"
  spec.license       = "MIT"

  spec.files         = Dir['{lib,spec}/**/*.rb']
  spec.files        += Dir['{bin,tasks}/*', 'tty-platform.gemspec']
  spec.files        += Dir['README.md', 'CHANGELOG.md', 'LICENSE.txt', 'Rakefile']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rake'
end
