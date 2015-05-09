class StaticController < ApplicationController
    def index
        Response.new.tap do |response|
            response.body = "Hello World"
            response.status_code = "200"
        end
    end 

    def show
        Response.new.tap do |response|
            response.body = "Catchall"
            response.status_code = "200"
        end
    end
end 
