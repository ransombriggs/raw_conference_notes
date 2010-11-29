$:.unshift File.join(File.dirname(__FILE__), 'sinatra.git', 'lib')

require 'rubygems'
require 'sinatra'

get '/hi' do
  "Hello World!"
end
