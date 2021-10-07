require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player' do
    $player = Player.new(params[:name])
    redirect to('/game')
  end

  post '/choice' do
    "You entered: #{params[:choice]}\nComputer entered: Paper\nComputer wins!"
  end

  get '/game' do
    @name = $player.name
    erb :game
  end

  run! if app_file == $0
end
