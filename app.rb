require 'sinatra/base'
require './lib/turn.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_option] = params[:option].to_sym
    session[:computer_option] = Computer.new.option
    redirect '/play'
  end

  # get '/start' do
  #   @name = session[:name]
  #   redirect '/result'
  # end

  # post '/result' do
  #   @name = session[:name]
  #   erb :result
  # end

  run! if app_file == $0
end
