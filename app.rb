require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    @choices
    erb :game
  end

  post '/choice' do
    @choice = params[:choice]

    if @choice == 'rock'
      @choices << 'rock'
    elsif @choice == 'paper'
      @choices << 'paper'
    elsif @choice == 'scissors'
      @choices << 'scissors'
    end

    redirect '/game'
  end

  run! if app_file == $0
end

class Choices

  attr_accessor :choices

  def initialize
    @choices = []
  end
end

@choices = Choices.new