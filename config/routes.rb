RacketApplication.router.config do
    get "/test", :to => "custom#test"
    get /.*/, :to => "custom#show"
end

