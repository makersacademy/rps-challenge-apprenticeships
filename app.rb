require 'sinatra/base'
require './lib/game_controller'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "here be dragons"

  get '/test' do
    'test page'
  end

  get '/' do
    session.clear
    session[:two_player?] = params[:two_player] == "true" ? true : false
    @two_player = session[:two_player?]
    erb :index
  end

  post '/enter-name' do
    session[:game] = GameController.new(params[:name], "Skynet")
    redirect to '/game'
  end

  post '/enter-names' do
    session[:game] = GameController.new(params[:player1], params[:player2])
    redirect to '/game'
  end
  
  get '/game' do
    @game = session[:game]
    single_player_text = "Make your selection to begin the game! Try to defeat the computer, it's Bo5."
    two_player_text = "Look away while player 1 makes their selection! Game is Bo5."
    intro_text = session[:two_player?] ? two_player_text : single_player_text
    @summary_text = session[:summary_text] || intro_text
    @game_over_text = session[:game].announce_winner if session[:game].game_over?
    p @game_over_text
    erb :game
  end

  post '/selection' do
    if !session[:two_player?]
      session[:summary_text] = session[:game].play_round(params[:selection])
    elsif session[:selection1].nil?
      session[:selection1] = params[:selection]
      session[:summary_text] = "Now #{session[:game].player2.name} make your selection."
    else
      session[:selection2] = params[:selection]
      session[:summary_text] = session[:game].play_round(session[:selection1], session[:selection2])
      session[:selection1] = nil
      session[:selection2] = nil
    end
    redirect to '/game'
  end
  
  run! if app_file == $0
end
