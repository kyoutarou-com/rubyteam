require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

get "/" do
    class Bit
        def asd(item)
            return (item*1024)
        end
    end
    bit = Bit.new
    @a = bit.name
    @puts = bit.asd(10)
    erb:"a"
end