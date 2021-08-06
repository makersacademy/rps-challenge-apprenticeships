require 'sinatra/base'
require_relative 'lib/move_generator'
require_relative 'lib/outcomes'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = params[:Player1]
    erb :play
  end

  computer_move = Move_Generator.new

  post '/result' do
    @user_move = params[:move]
    @outcome = check(@user_move, computer_move.generator_move)
    erb :result
  end
  
  run! if app_file == $0
end
