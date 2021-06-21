require 'sinatra/base'
require_relative 'play.rb'


class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/names' do
    erb :index
  end

  post '/names' do
    session[:human_player] = params[:human_player]
    redirect '/start_game'
  end

  get '/start_game' do
    @player = session[:human_player]
    erb :start_game  
  end

  post '/start_game' do
    redirect '/rps_game'
  end

  get '/rps_game' do
    erb :rps_game
  end

  post '/rps_game' do
    session[:player_choice] = params[:your_choice]
    redirect '/result_rps'
  end

  get '/result_rps' do
    @player_choice = session[:player_choice]
    session[:choice] = PlayRPS.new(@player_choice)
    @play = session[:choice]
    if @play = 'Computer wins!'
      'Computer wins!'
    elsif @play = 'You win!'
      'You win!'
    else @play = 'It is a tie!'
      'It is a tie!'
    end
  end
  
  
  


  run! if app_file == $0
end
