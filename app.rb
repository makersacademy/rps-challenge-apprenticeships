require 'sinatra/base'
require './lib/computer.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end
  post '/names' do
    session[:player]= params[:player]
    redirect '/game'
  end
  get '/game' do
    @player = session[:player]
    erb :game
  end
  get '/rock' do
    @computer = Computer.new
    @computer_picked = @computer.pick_weapon
    erb :rock_picked
  end
  run! if app_file == $0
end
