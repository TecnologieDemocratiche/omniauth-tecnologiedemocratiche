# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-tecnologiedemocratiche/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-tecnologiedemocratiche'
  spec.version       = OmniAuth::Tecnologiedemocratiche::VERSION
  spec.authors       = ['Alessandro Rodi']
  spec.email         = ['alessandro.rodi@renuo.ch']
  spec.summary       = %q{Omniauth Strategy to connect via Tecnologie Democratiche}
  spec.description   = %q{Omniauth Strategy to connect via Tecnologie Democratiche}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
