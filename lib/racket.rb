require_relative 'router'
puts "lib_router LOADED" if defined?(Racket)

class Racket
    attr_reader :router

    def intialize
        @router = Router.new
    end
end
