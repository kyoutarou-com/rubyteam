require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/count.rb'
require'net/http'
require'uri'

before do
  if Count.all.size == 0
    Count.create(number: 0)
  end
end

get '/' do
  @number = Count.first.number
  erb:"index1"
end
get '/home/:na'do
  @name = params[:na]
  erb:"index2"
end
post '/plus' do
  count = Count.first
  count.number = count.number + 1
  count.save
  redirect '/'
end
post '/mains' do
  count = Count.first
  count.number = count.number - 1
  count.save
redirect '/'
end