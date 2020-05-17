require 'sinatra/base'
require './lib/rps_game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/start-game' do
    erb :game_start
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/fight'
  end

  get '/fight' do
    @name = session[:name]
    erb :fight
  end

  get '/rock' do
    @game = Game.new
    @move = 'Rock'
    @computer = @computer.randomize
    @results = @game.win(@move, @computer)
    erb :rock
  end

  get '/paper' do
    @game = Game.new
    @move = 'Paper'
    @computer = @computer.randomize
    @results = @game.win(@move, @computer)
    erb :paper
  end

  get '/scissors' do
    @game = Game.new
    @move = 'Scissors'
    @computer = @computer.randomize
    @results = @game.win(@move, @computer)
    erb :scissors
  end
    run! if app_file == $0
end
