require 'sinatra/base'
require  './lib/game'
class RockPaperScissors < Sinatra::Base
  ['/sologame', '/sologameresult', '/multigame1', '/multigame2', '/multigameresult'].each do |path|
    before path do
      @player1 = Game.instance_of_game.player1.name
      @player2 = Game.instance_of_game.player2.name
    end
  end
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  get '/instructions' do
    erb(:instructions)
  end

  get '/soloplay' do
    erb(:soloplay)
  end

  post '/name' do
    Game.set_a_game(Player.new(params[:player1]),Player.new())
    redirect '/sologame'
  end

  get '/sologame' do
    erb(:sologame)
  end

  post '/sologamepost' do
    Game.instance_of_game.choice_of_player1(params[:figures])
    Game.instance_of_game.choice_of_player2()
    redirect '/sologameresult'
  end

  get '/sologameresult' do
    @verdict = Game.instance_of_game.player1_status
    erb(:sologameresults)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  post '/names' do
    Game.set_a_game(Player.new(params[:player1]),Player.new(params[:player2]))
    redirect '/multigame1'
  end

  get '/multigame1' do
    erb(:multigame1)
  end

  post '/multigame1post' do
    Game.instance_of_game.choice_of_player1(params[:figures])
    redirect '/multigame2'
  end

  get '/multigame2' do
    erb(:multigame2)
  end

  post '/multigame2post' do
    Game.instance_of_game.choice_of_player2(params[:figures])
    redirect '/multigameresult'
  end

  get '/multigameresult' do
    @verdict = Game.instance_of_game.player1_status
    erb(:multigameresults)
  end

  run! if app_file == $0
end
