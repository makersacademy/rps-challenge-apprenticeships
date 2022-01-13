require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  # Session is a short-term information store that lives on the server
  # Store basic information across multiple requests
  # Sinatra sessions is hash so we need to assign a key when we store the value
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
    # redirect '/solution' 
    session[:PlayerMove] = params[:PlayerMove]
    @PlayerMove = params[:PlayerMove]

    @PlayerName = session[:PlayerName]

    @Computer = Computer.new
    @ComputerMove = @Computer.rps
    # @Winner = @Computer.winner
    # Winner.new(@PlayerMove)
    erb(:player_move)
  end

  # get '/solution'do
  #   erb(:solution)
  # end

  run! if app_file == $0
end
