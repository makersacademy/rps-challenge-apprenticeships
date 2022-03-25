require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/choose' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissor] = params[:scissor]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @rock = session[:rock]
    @paper = session[:paper]
    @scissor = session[:scissor]
    @computer = Computer.new.weapon
    @result = Game.new
    erb :result
  end

  run! if app_file == $0
end
