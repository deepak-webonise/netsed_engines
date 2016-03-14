$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mms/users/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mms_users"
  s.version     = Mms::Users::VERSION
  s.authors     = ["deepak.webonise"]
  s.email       = ["deepak.kabbur@weboniselab.com"]
  s.homepage    = ""
  s.summary     = ": Summary of MmsUsers."
  s.description = ": Description of MmsUsers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
