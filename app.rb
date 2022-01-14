require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/start' do
    name = params[:name]
    player1 = Player.new(name)
    player2 = Player.new("Computer")
    $game = Game.new(player1, player2)
    
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb :game
  end

  post '/attack' do
    @game = $game
    player_1_action = params[:attack]
    player_2_action = Decide.new.attack
    @game.play(player_1_action, player_2_action)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
