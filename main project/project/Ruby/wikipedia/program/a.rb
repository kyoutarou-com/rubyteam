require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
    @a = [0,1,2,3,4,5,6,7,8,9,10]
    @b = 1
    @c = ["q","w","e","r"]
    erb:a
end