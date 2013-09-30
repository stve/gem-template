# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_template/version'

Gem::Specification.new do |spec|
  spec.name          = 'gem_template'
  spec.version       = GemTemplate::VERSION
  spec.homepage      = ''

  spec.author        = "Steve Agalloco"
  spec.email         = 'steve.agalloco@gmail.com'
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}

  spec.licenses      = ['MIT']

  spec.executables   = Dir.glob("bin/**/*")
  spec.files         = %w(.yardopts LICENSE.md README.md Rakefile gem_template.gemspec)
  spec.files         += Dir.glob("lib/**/*.rb")
  spec.files         += Dir.glob("spec/**/*")
  spec.test_files    = Dir.glob("spec/**/*")

  spec.require_paths = ['lib']
end
