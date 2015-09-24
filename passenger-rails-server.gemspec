require File.expand_path("../.gemspec", __FILE__)
require File.expand_path("../lib/passenger_rails_server/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "passenger-rails-server"
  gem.authors     = ["Piero Dotti"]
  gem.email       = ["progiemmeh@gmail.com"]
  gem.description = readme.description
  gem.summary     = readme.summary
  gem.homepage    = "https://github.com/ProGM/passenger-rails-server"
  gem.version     = PassengerRailsServer::VERSION

  gem.files       = Dir["lib/**/*"]

  gem.required_ruby_version = ">= 1.8.7"

  gem.add_dependency "rack"
  gem.add_dependency "passenger"
end
