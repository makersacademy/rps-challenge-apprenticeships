require 'sinatra/base'
require_relative './lib/computer_choice'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/rock' do
    @player = session[:player]
    @player_choice = @player.rock_paper_scissors('rock')
    @computer_choice = ComputerChoice.new.make_decision
    @result = Game.new(@player_choice, @computer_choice).play
    erb :result
  end

  get '/paper' do
    @player = session[:player]
    @player_choice = @player.rock_paper_scissors('paper')
    @computer_choice = ComputerChoice.new.make_decision
    @result = Game.new(@player_choice, @computer_choice).play
    erb :result
  end

  get '/scissors' do
    @player = session[:player]
    @player_choice = @player.rock_paper_scissors('scissors')
    @computer_choice = ComputerChoice.new.make_decision
    @result = Game.new(@player_choice, @computer_choice).play
    erb :result
  end

  run! if app_file == $0
end
