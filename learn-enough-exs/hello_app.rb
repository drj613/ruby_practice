 require 'sinatra'

 get '/' do
    'hello, world!'
 end

 get '/admin' do
    'this part is top secret'
 end