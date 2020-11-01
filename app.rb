require 'sinatra/base'
require_relative 'lib/turn'
require_relative 'lib/computer'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_move] = params[:move].downcase.to_sym
    session[:computer_move] = Computer.new.move
    redirect '/play'
  end

  run! if app_file == $0
end
