require 'bundler'
Bundler.require


require_relative 'lib/racket'
puts "lib_racket LOADED" if defined?(Racket)

require_relative 'lib/request_controller'
puts "lib_request_controller LOADED" if defined?(RequestController)



RacketApplication = Racket.new

require_relative 'config/routes'
puts "config_routes LOADED" if defined?(Routes)

run RequestController.new
