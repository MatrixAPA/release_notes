$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "release_notes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "release_notes"
  spec.version     = ReleaseNotes::VERSION
  spec.authors     = ["alainritchie"]
  spec.email       = ["alain.ritchie@thisismatrix.com"]
  spec.homepage    = "https://tim.thisismatrix.com/release_notes"
  spec.summary     = "A Release Notes Engine."
  spec.description = "Description of ReleaseNotes."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'rails', '>=6.0.2.1', '< 7'

  spec.add_dependency 'jquery-rails', '~> 4.3'
  spec.add_dependency 'paper_trail', '~> 12.0'
  spec.add_dependency 'pg', '~> 1.1'
  spec.add_dependency 'shoulda-matchers', '~> 4.1'

  spec.add_development_dependency 'database_cleaner', '~> 1.7'
  spec.add_development_dependency 'factory_bot_rails', '~> 6.1'
  spec.add_development_dependency 'faker', '~> 1.9'
  spec.add_development_dependency 'rspec-rails'
end
