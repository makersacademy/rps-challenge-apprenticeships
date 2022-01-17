require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :welcome 
  end

  post '/name' do 
    $player = params[:player]
    #$player = Player.new(params[:player])
    redirect '/play'
  end 

  get '/play' do 
    @player = $player
   erb :play 
  end 


  post '/choserock' do
    erb :rock 
  end

  post '/chosepaper' do
    erb :paper
  end

  post '/chosescissors' do
    erb :scissors
  end

  run! if app_file == $0
end
