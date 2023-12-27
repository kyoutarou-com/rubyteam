require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
    erb:a
end
get '/a' do
    @a = params[:a]
    erb:b
end