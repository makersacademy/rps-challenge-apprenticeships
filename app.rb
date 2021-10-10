require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = params[:player_name]
    @player_name = @player
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/decision' do
    @decision = params[:choice]
    @game.turn(@decision)

  end

  run! if app_file == $0
end
