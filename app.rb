require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  # get '/' do
  #   'test page'
  # end

  get '/' do
    erb (:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/options'
  end

  get '/options' do
    @player_1_name = session[:player_1_name]
    erb :options
  end

  post '/options' do
      @player_1_name = session[:player_1_name]
      redirect :play
  end

  post '/Rock' do
    erb :play
    redirect :play
  end

  post '/Paper' do
    erb :play
    redirect :play
  end

  post '/Scissors' do
    erb :play
    redirect :play
  end

  get '/play' do
    @computer_choice = ['Rock', 'Paper', 'Scissors'].sample
    erb :play
  end

  get '/result' do
    if @player_1_name == "rock" && @computer_choice == "scissors"
      print "Player 1 wins"
      elsif @player_1_name == "scissors" && @computer_choice == "paper"
        print "Player 1 wins"
      elsif @player_1_name == "paper" && @computer_choice == "rock"
        print "Player 1 wins"
      elsif @player_1_name == "paper" && @computer_choice == "scissors"
        print "Player 2 wins"
      elsif @player_1_name == "scissors" && @computer_choice == "rock"
        print "Player 2 wins"
      elsif @player_1_name == "rock" && @computer_choice == "paper"
        print "Player 2 wins"
      elsif @player_1_name == @computer_choice
        print "It's a draw"
      erb :result
      end
    end



  run! if app_file == $0
end

