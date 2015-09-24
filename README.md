[![Gem Version](https://badge.fury.io/rb/passenger-rails-server.svg)](http://badge.fury.io/rb/passenger-rails-server)
[![Code Climate](https://codeclimate.com/github/ProGM/passenger-rails-server/badges/gpa.svg)](https://codeclimate.com/github/ProGM/passenger-rails-server)

# passenger-rails-server

passenger-rails-server is a simple gem that sets the default server for rack (and rails) to [phusion passenger](https://www.phusionpassenger.com/).

## Description

passenger-rails-server overrides the `Rack::Handler.default` method to return `Rack::Handler::Passenger` which will cause rack (and
rails) to use passenger by default.

## Installation

Add this line to your application's `Gemfile`:

    gem "passenger-rails-server"

And then execute:

    $ bundle install

## Usage

Just add the gem to your `Gemfile` and then `rails server` will default to using passenger.

## Inspiration
https://github.com/samuelkadolph/unicorn-rails

## Contributing

Fork, branch & pull request.
