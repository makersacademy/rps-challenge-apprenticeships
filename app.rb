require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rps'
require_relative './lib/opponent'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/mode' do
    if params[:mode] == "one-player"
      redirect '/one-player'
    else 
      redirect '/two-player'
    end
  end

  get '/one-player' do
    erb(:oneplayer)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/og-play'
  end

  get '/og-play' do 
    @name = session[:player]
    erb(:ogplay)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/two-player' do
    erb(:twoplayer)
  end

  post '/names' do
    session[:player] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/one-choose'
  end

  get '/result' do
    @name = session[:player]
    if session[:player_two].nil?
      @player_two_name = "The Computer"
      @round = RPS.new(session[:choice], Opponent.new.generate_choice)
    else
      # @player_two_name = session[:player_two]
      # @round = RPS.new(session[:choice] REWORK RPS so just feed Opponent.new.generate_choice????)
      "Happy dance"
    end
    erb(:result)
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
