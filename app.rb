require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player'
require './lib/input_checker'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  InputChecker.new
  Game.new

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @name_error = !InputChecker.input.empty?
    erb(:index)
  end

  post '/register' do
    name = InputChecker.set_input(params[:name])
    redirect "/" if InputChecker.input.empty?
    Player.new(name)
    redirect "/play"
  end

  get '/play' do
    @player_score = Game.player_score
    @computer_score = Game.computer_score
    @name = Player.name
    erb(:play)
  end

  post '/move' do
    p Game.shoot(params[:move])
    redirect "/result"
  end

  get '/result' do
    @result = Game.latest_result
    erb(:result)
  end

  run! if app_file == $0
end
