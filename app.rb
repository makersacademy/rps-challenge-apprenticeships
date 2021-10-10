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
    erb :game
  end

  post '/choice' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]

    if @rock
      @choices << @rock
    elsif @paper 
      @choices << @paper
    elsif @scissors
      @choices << @scissors
    end

    redirect '/game'
  end

  run! if app_file == $0
end

# class Choices

#   attr_accessor :choices

#   def initialize
#     @choices = []
#   end
# end

# @choices = Choices.new