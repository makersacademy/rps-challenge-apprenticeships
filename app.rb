require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    erb :rock
  end

  post '/paper' do
    erb :paper
  end

  post '/scissors' do
    erb :scissors
  end

  post '/play_again' do
    @game.play_again
    redirect('/play')
  end

  run! if app_file == $0
end
