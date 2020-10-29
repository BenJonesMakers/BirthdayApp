require 'sinatra/base'
require './lib/birthday'

#set :session_secret, 'a birthday secret'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/result' do
    @name = params[:name]
    @birthday = Birthday.new(params[:day], params[:select_month])
    
    if @birthday.today?
      @result_text = "Happy Birthday #{@name}!"
    else
      @result_text = "Your birthday will be in X days, #{@name}."
    end

    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
