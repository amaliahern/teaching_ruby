require 'sinatra/base'

 class HashAlive < Sinatra::Base
   get '/' do
     erb :landing
   end

   get '/hash' do
     erb :landing
   end

   get '/hash/delete' do
     @hashparam = params["key"] 
     erb :delete
   end

   get '/hash/delete/:key' do
     @hashparam = params["key"] 
     erb :delete
   end

 end
