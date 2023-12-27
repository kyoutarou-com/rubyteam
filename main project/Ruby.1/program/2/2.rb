require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get '/' do
    @a = "what your name?"
    erb:"2"
end

get '/a' do
    @a = "Hello "+ params[:c] + " !!!"
    erb:"3"
end