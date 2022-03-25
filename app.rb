require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/name' do
    @user_name = params[:user_name]
    erb :play
  end

  run! if app_file == $0
end
