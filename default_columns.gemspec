$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "default_columns/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "default_columns"
  s.version     = DefaultColumns::VERSION
  s.authors     = ["Tyler Smith"]
  s.email       = ["tylertsmith14@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DefaultColumns."
  s.description = "TODO: Description of DefaultColumns."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

#  s.add_development_dependency "sqlite3"
end
