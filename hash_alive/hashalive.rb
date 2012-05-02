require 'sinatra/base'

 class HashAlive < Sinatra::Base

   get '/' do
     erb :landing
   end

   get '/delete' do
     "Welcome to Delete Hash Method!"
   end
 end
