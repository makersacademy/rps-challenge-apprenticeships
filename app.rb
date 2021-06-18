require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    session[:option] = nil
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    game = Game.new
    @name = session[:name]
    @option = session[:option]
    @computer_option = game.computer_option
    @final_message = game.final_message(@option, @computer_option)
    erb :play
  end
  
  post '/option' do
    session[:option] = params[:option]
    redirect '/play'
  end

  post '/new_game' do
    session[:option] = nil
    redirect '/play'
  end

  run! if app_file == $0
end
