# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/bootstrap/templates/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-bootstrap-templates"
  spec.version       = Rails::Bootstrap::Templates::VERSION
  spec.authors       = ["Leon Berenschot"]
  spec.email         = ["leipeleon@gmail.com"]

  spec.summary       = %q{scaffold bootstrap templates}
  spec.description   = %q{bootstrap+haml+templates}
  spec.homepage      = "https://github.com/LeipeLeon/rails-bootstrap-templates"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "haml-rails"
  spec.add_dependency "bootstrap-generators"
  spec.add_dependency "bootstrap_form"

  spec.add_development_dependency "bundler", "~> 1.12"
end
