# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'payonline/version'

Gem::Specification.new do |spec|
  spec.name          = 'payonline-ruby'
  spec.version       = Payonline::VERSION
  spec.authors       = ['Dan Kim', 'Yuri Zubov']
  spec.email         = ['itsdanya@gmail.com.com']

  spec.summary       = 'PayOnline API wrapper.'
  spec.description   = 'This is a thin wrapper library that makes using PayOnline API a bit easier.'
  spec.homepage      = 'https://github.com/itsdn/payonline-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activesupport', '~> 4.2.6'
  spec.add_development_dependency 'rake', '~> 12.3'
end
