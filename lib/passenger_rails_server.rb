module PassengerRailsServer
  require "passenger_rails_server/version"
end

module Rack
  module Handler
    class Passenger
      class << self
        def run(app, options = {})
          begin
            require 'rubygems'
          rescue LoadError
          end
          require 'phusion_passenger'

          PhusionPassenger.locate_directories
          PhusionPassenger.require_passenger_lib 'standalone/main'

          STDOUT.sync = STDERR.sync = true

          # Fixes https://github.com/phusion/passenger-ruby-heroku-demo/issues/11
          STDOUT.binmode
          STDERR.binmode

          PhusionPassenger::Standalone.run!(['start'])
        end

        def environment
          ENV['RACK_ENV'] || ENV['RAILS_ENV']
        end
      end
    end

    register 'phusion_passenger', 'Rack::Handler::Passenger'

    def self.default(options = {})
      Rack::Handler::Passenger
    end
  end
end
