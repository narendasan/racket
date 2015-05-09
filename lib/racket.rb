require File.join(File.dirname(__FILE__),'router.rb')

class racket
    attr_readet :router

    def intialize
        @router = Router.new
    end
end
