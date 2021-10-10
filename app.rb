require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
class RockPaperScissors < Sinatra::Base
  attr_reader :rock_option, :paper_option, :scissors_option
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/names' do
    erb :name
  end

  post "/game" do
    $player_name = Player.new(params[:player_name])
    redirect '/start'
  end

  get "/start" do
    @player_name = $player_name.name
    erb :game
  end

  post "/rock" do
    $player_choice = Game.new(params[:rock_option], $player_name.name)
    @rock_option = $player_choice.player_choice
    erb :option  
  end

  post "/paper" do
    $player_choice = Game.new(params[:paper_option], $player_name.name)
    @paper_option = $player_choice.player_choice
    erb :option
  end

  post "/scissors" do
    $player_choice = Game.new(params[:scissors_option], $player_name.name)
    @scissors_option = $player_choice.player_choice
    erb :option
  end

  run! if app_file == $0
end
