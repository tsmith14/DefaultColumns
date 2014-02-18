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
  s.summary     = "Allow for standard columns to be added to models (in addition to the normal: updated_at & created_at)"
  s.description = "Allow for standard columns to be added to models (in addition to the normal: updated_at & created_at). \n Current Model Add-Ons:
  	Archivable (archived [Boolean], archived_at [DateTime]), Deletable (deleted [Boolean], deleted_at [DateTime])"
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

#  s.add_development_dependency "sqlite3"
end
