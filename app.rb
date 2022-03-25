require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/choices' do
    @name = params[:name]
    redirect '/selections'
  end

  get '/selections' do
    erb(:select)
  end

  post '/match' do
   
    @player_choice = params[:selection]
    computer = Computer.new
    @computer_choice = computer.choice
    game = Game.new(@player_choice, @computer_choice)
    @final = game.compare
    puts @final
    # redirect '/result'

    if @final == "You Won!"
      redirect '/winner'
    elsif @final == "You Lose!"
      redirect '/loser'
    else
      redirect '/draw'
    end

  end

  # get '/result' do
  #   erb(:final)
  # end

  get '/winner' do
    erb(:winner)
  end

  get '/loser' do
    erb(:loser)
  end

  get '/draw' do
    erb(:draw)
  end

  run! if app_file == $0
end
