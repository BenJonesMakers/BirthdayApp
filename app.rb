require 'sinatra/base'

#set :session_secret, 'a birthday secret'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
