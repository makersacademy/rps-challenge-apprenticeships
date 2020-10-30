require 'sinatra/base'
require './lib/game_controller'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "here be dragons"

  # logic to display form for one or two player game
  get '/' do
    session.clear
    session[:two_player?] = params[:two_player] == "true"
    @two_player = session[:two_player?]
    erb :index
  end

  # create single player game
  post '/enter-name' do
    session[:game] = GameController.new(params[:name], "Skynet")
    redirect to '/game'
  end
  
  # create two player game
  post '/enter-names' do
    session[:game] = GameController.new(params[:player1], params[:player2])
    redirect to '/game'
  end
  
  get '/game' do
    @game = session[:game]
    @options = ["rock", "paper", "scissors", "lizard", "spock"]
    single_player_text = "Make your selection to begin the game! Try to defeat the computer!"
    two_player_text = "Look away while player 1 makes their selection!"
    # set correct intro text for single or two player
    intro_text = session[:two_player?] ? two_player_text : single_player_text
    # show intro text initially, then summary of the last round played
    @summary_text = session[:summary_text] || intro_text
    # add game over text if someone has reached the winning score
    @game_over_text = session[:game].announce_winner if session[:game].game_over?
    erb :game
  end

  post '/selection' do
    # if single player, play round vs computer AI
    if !session[:two_player?]
      session[:summary_text] = session[:game].play_round(params[:selection])
    # if first choice, store and the get player 2's choice
    elsif session[:selection1].nil?
      session[:selection1] = params[:selection]
      session[:summary_text] = "Now #{session[:game].player2.name} make your selection."
    # once both players have chosen, play round and reset choices
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
