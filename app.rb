require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    erb(:play)
  end

  get '/startgame' do
    erb(:startgame)
  end

  post '/choice' do
    @player1 = $player1
    @player1.playerchoice(params[:value])
    redirect '/result'
  end

  get '/result' do
    @player1 = $player1
    erb(:result)
  end

  run! if app_file == $0
end
