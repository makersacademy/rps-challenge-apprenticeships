require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:player1]
    redirect('/game')
  end

  get '/game' do
    @player1 = session[:player1]
    erb(:game)
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    redirect('/result')
  end

  def computer_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end

  get '/result' do
    @weapon1 = session[:weapon]
    @weapon2 = computer_weapon
    if @weapon1 == @weapon2
      @message = "It's a draw!"
    elsif @weapon1 == 'Rock' && @weapon2 == 'Paper'
      @message = "You lose!"
    elsif @weapon1 == 'Rock' && @weapon2 == 'Scissors'
      @message = "You win!"
    elsif @weapon1 == 'Paper' && @weapon2 == 'Rock'
      @message = "You win!"
    elsif @weapon1 == 'Paper' && @weapon2 == 'Scissors'
      @message = "You lose!"
    elsif @weapon1 == 'Scissors' && @weapon2 == 'Rock'
      @message = "You lose!"
    elsif @weapon1 == 'Scissors' && @weapon2 == 'Paper'
      @message = "You win!"
    else
      @message = "That's impossible!"
    end
    erb(:result)
  end

  post '/replay' do
    redirect('/game')
  end

  post '/new_player' do
    redirect('/')
  end

  run! if app_file == $0
end
