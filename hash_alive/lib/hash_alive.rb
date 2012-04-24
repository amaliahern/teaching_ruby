require 'sinatra/base'

class HashAlive < Sinatra::Base
  get '/' do
    'Welcome to Hash-Alive! 
     Choose a hash method
     Delete Method
     Each_Pair Method
     Each_Value Method
     Fetch Method'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
