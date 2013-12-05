# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/fog_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-fog'
  spec.version       = Kitchen::Driver::FOG_VERSION
  spec.authors       = ['Jonathan Hartman']
  spec.email         = ['j@p4nt5.com']
  spec.description   = %q{A Test Kitchen Fog Nova driver}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/TerryHowe/kitchen-fog'
  spec.license       = 'Apache'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '~> 1.1.0'
  spec.add_dependency 'fog', '~> 1.15'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'countloc'
  spec.add_development_dependency 'rspec'
end

# vim: ai et ts=2 sts=2 sw=2 ft=ruby
