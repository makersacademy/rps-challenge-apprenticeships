require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :name_form
  end

  post '/game' do
    @name = params[:name]
    @player_score = 0
    @computer_score = 0
    @choices = ['Rock', 'Paper', 'Scissors']
    @player_choice = nil
    erb :game
  end

  run! if app_file == $0
end
