require 'sinatra/base'
require './models/rps.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/result' do
    @player = session[:name]
    @choice = params.key("")
    game = RPS.new(@choice)
    @pc_choice = game.pc_choice
    @winner = game.calculate
    @winner = @player if @winner == "player"
    erb :result
  end

  run! if app_file == $0
end
