require_relative 'lib/Strainz/version'

Gem::Specification.new do |spec|
  spec.name          = "Strainz"
  spec.version       = Strainz::VERSION
  spec.authors       = ["Sinrock"]
  spec.email         = ["mruhaak@gmail.com"]

  spec.summary       = "summary of it"
  spec.description   = "description"
  spec.homepage      = "https://github.com/Sinrock/Strainz.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Sinrock/Strainz.git"
  spec.metadata["changelog_uri"] = "https://github.com/Sinrock/Strainz.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  f.match(%r{^(test|spec|features)/})
end
  spec.bindir        = 'bin'
  spec.executables   = ["strainz"]
  spec.require_paths = ["lib"]
end
