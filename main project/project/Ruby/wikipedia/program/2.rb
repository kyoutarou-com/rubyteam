require 'bundler/setup'
Bundler.require
require 'sintra/reloader' if development?

get '/' do
    erb:2
end