require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do 
    register Sinatra::Reloader 
  end

  get '/test' do
    'test page'
  end

  get '/' do 
    erb (:index)
  end

  post '/players' do
    session[:PlayerName] = params[:PlayerName]
    @PlayerName = session[:PlayerName]
    erb(:players)
  end

  post '/player_move' do
    session[:PlayerMove] = params[:PlayerMove]
    @PlayerMove = params[:PlayerMove]

    @PlayerName = session[:PlayerName]

    session[:ComputerMove]= Computer.new.rps
    @ComputerMove = session[:ComputerMove]

    session[:Winner]= Game.new(@ComputerMove, @PlayerMove).winner
    redirect '/solution' 
  end

  get '/solution'do
    @Winner = session[:Winner]
    erb(:solution)
  end

  get '/restart'do
    @PlayerName = session[:PlayerName]
    erb(:players)
  end

  run! if app_file == $0
end
