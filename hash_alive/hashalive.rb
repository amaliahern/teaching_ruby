require 'sinatra/base'

 class HashAlive < Sinatra::Base

   get '/' do
     erb :landing
   end

 end
