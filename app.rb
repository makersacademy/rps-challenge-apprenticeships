# This is the controller of the RPS programme
require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  
  #1 we need a home page for which contents are designed in index.erb
  get '/' do
    erb :index
  end 

  #2 After designed the form we want the user input post to the server 
  #  so we can use it later to assign it to a variable etc.  
  #3 Users should also be able to see their name with some greeting or guidance for next step, which designed in play.erb 
  post '/name' do 
    $player_name = params[:player_name]
    erb :play
  end
  
  #4 After user chose move, the control will go to model 'Game'
  #  the 'win?' method will compare values of player_option and computer_option against rules defined
  #  and return the winner to result.erb
  get '/play' do 
    $player_name
    $player_option = params[:option]
    $computer_option = ['Rock', 'Paper', 'Scissors'].sample
    @game = Game.new($player_option,$computer_option)
    @game.win?
    erb :result
  end 

  run! if app_file == $0

end
