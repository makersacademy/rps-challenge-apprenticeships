require 'sinatra/base'
require './lib/game_choice.rb'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:name]
    erb :options
  end

  get '/names' do
    @choice = params[:rps]
    game = Game.new
    @message = game.start(@choice)
    erb :message
 end

  run! if app_file == $0

  end
