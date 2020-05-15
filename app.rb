require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/choices' do
    @player_name = params[:player_name]
    @choice = params[:choice]
    # redirect '/results'
    erb :choices
  end

  post '/results' do
    erb :results
  end

  run! if app_file == $0
end
