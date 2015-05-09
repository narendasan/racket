RacketApplication.router.config do
    get "/test", :to => "static.test"
    get /.*/, :to => "static.show"
end

