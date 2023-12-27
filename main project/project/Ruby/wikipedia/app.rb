require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'net/http'
require 'uri'

get '/' do
   base_url = 'http://wikipedia-api.webs.life-is-tech.com/?keyword=' 
   if params[:key]
        url = URI.parse(base_url + params[:key])
        @result = Net::HTTP.get(url).force_encoding("utf-8")
   end
   erb:index
end