$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mms"
  s.version     = Mms::VERSION
  s.authors     = ["deepak.webonise"]
  s.email       = ["deepak.kabbur@weboniselab.com"]
  s.homepage    = ""
  s.summary     = "Summary of Mms."
  s.description = "Description of Mms."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_dependency 'devise'
  s.add_dependency 'pg'
  s.add_dependency 'mms_users'
  s.add_dependency 'mms_backend'
end
