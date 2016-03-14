$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mms/backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mms_backend"
  s.version     = Mms::Backend::VERSION
  s.authors     = ["deepak.webonise"]
  s.email       = ["deepak.kabbur@weboniselab.com"]
  s.homepage    = ""
  s.summary     = " Summary of MmsBackend."
  s.description = " Description of MmsBackend."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
