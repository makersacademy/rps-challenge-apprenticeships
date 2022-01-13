require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer.rb'

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
    @PlayerName = params[:PlayerName]
    erb(:players)
  end

  post '/player_move' do
    # redirect '/solution' 
    @PlayerMove = params[:PlayerMove]
    @ComputerMove = Computer.new.rps
    # Computer.new
    # Winner.new(@PlayerMove)
    erb(:player_move)
  end

  # get '/solution'do
  #   erb(:solution)
  # end

  run! if app_file == $0
end
