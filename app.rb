require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :game
  end

  post '/result' do
    @player_choice = params[:choice]
    @computer_choice = ['Rock', 'Paper', 'Scissors'].sample
    erb :result
  end

  run! if app_file == $0
end
