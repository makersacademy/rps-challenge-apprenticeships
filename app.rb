require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    $game = Game.new
    erb :play
  end

  get '/start' do
    erb :start
  end

  get '/rock' do
    @game = $game
    @choice = 'rock'
    @opponent = @game.randomize
    @winner = @game.win(@choice, @opponent)
    erb :rock
  end

  get '/paper' do
    @game = $game
    @choice = 'paper'
    @opponent = @game.randomize
    @winner = @game.win(@choice, @opponent)
    erb :paper
  end

  get '/scissors' do
    @game = $game
    @choice = 'scissors'
    @opponent = @game.randomize
    @winner = @game.win(@choice, @opponent)
    erb :scissors
  end

  run! if app_file == $0
end
