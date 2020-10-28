require 'sinatra/base'

#set :session_secret, 'a birthday secret'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/result' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:select_month]
    t = Time.now
  
    if t.day.to_s == @day && t.strftime("%B").downcase == @month
      @result_text = "Happy Birthday #{@name}!"
    else
      @result_text = "Your birthday will be in X days, #{@name}."
    end

    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
