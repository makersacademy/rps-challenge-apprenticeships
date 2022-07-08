require 'sinatra/base'
require './lib/game'
require './lib/player'

# require 'sinatra'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  # root contains a form that directs to /play via /name
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:first_name])
    $game = Game.new($player)
    #session[:first_name] = params[:first_name]
    redirect '/play'
  end

  # /play contains buttons that direct to /result via /played
  get '/play' do
   # @name = session[:first_name]
    erb(:play)
  end

  post '/played' do
    session[:button] = params[:button]
    redirect '/result'
  end

  get '/result' do
    #@name = session[:first_name]
    @button = session[:button]
    erb(:result)
  end

  run! if app_file == $0
end
