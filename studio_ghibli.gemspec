# frozen_string_literal: true

require_relative "lib/studio_ghibli/version"

Gem::Specification.new do |spec|
  spec.name          = "studio_ghibli"
  spec.version       = StudioGhibli::VERSION
  spec.authors       = ["Ernsyka Methelus"]
  spec.email         = ["ernsykamethelus@yahoo.com"]

  spec.summary       = %q{"A Ruby gem to have a magical adventure"}
  spec.description   = %q{"A Ruby gem to have yourself find informations regarding the Studio Ghibli world."}
  spec.homepage      = "https://github.com/ernsykamethelus/studi.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://ghibliapi.herokuapp.com/films/"
  spec.metadata["changelog_uri"] = "https://ghibliapi.herokuapp.com/films/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "tty-prompt"
  spec.add_dependency "net-http"
  spec.add_dependency "colorize", "~> 0.8.1"

  # spec.add_development_dependency "rake", "~> 13.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
# TODO: Put your gem's public repo URL here.