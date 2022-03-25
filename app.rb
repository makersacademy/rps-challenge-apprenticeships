require 'sinatra/base'
require './lib/play.rb'
class RockPaperScissors < Sinatra::Base
  
  
  get '/' do
    erb(:index)
  end
  
  post "/names" do 
    @player = params[:player_name]
    erb(:welcome)
  end
  
  post "/outcome" do 
    game = Play.new(params[:choices])
    @result = game.play 
    @computer = game.computer_choice.upcase
    @your_choice = (params[:choices]).upcase
    erb(:outcome)
  end

  run! if app_file == $0
end
