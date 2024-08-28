# frozen_string_literal: true

require_relative "lib/string-db_inflector/version"

Gem::Specification.new do |spec|
  spec.name = "string-db_inflector"
  spec.version = String::DbInflector::VERSION
  spec.authors = ["Claus Rasmussen"]
  spec.email = ["claus.l.rasmussen@gmail.com"]

  spec.summary = "String inflectors for database names"
  spec.description = "Provides String#pluralize and String#singularize"
  spec.homepage = "https://github.com/clrgit/string-db_inflector"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_dependency "dry-inflector"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
