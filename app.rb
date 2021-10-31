require 'sinatra/base'
require 'sinatra/reloader'
# require 'computers_choice'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  attr_reader :players_choice  

  def initialise(computer = Computer.new)
    @players_choice = ""
    @computers_choice = computer.random
  end 

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end 

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end 

  get '/play' do 
    @player_1_name = session[:player_1_name]
    erb :play
  end 

  run! if app_file == $0
end
