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
    if session[:player_two].nil?
      redirect '/result'
    else
      redirect '/two-choose'
    end
  end

  get '/two-player' do
    erb(:twoplayer)
  end

  post '/names' do
    session[:player] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/og-play'
  end

  get '/two-choose' do
    @name = session[:player_two]
    erb(:twochoose)
  end

  post '/choice-2' do
    session[:p2_choice] = params[:choice]
    redirect "/result"
  end

  get '/result' do
    @name = session[:player]
    if session[:player_two].nil?
      @player_two_name = "The Computer"
      @round = RPS.new(session[:choice], Opponent.new.generate_choice)
    else
      @player_two_name = session[:player_two]
      @round = RPS.new(session[:choice], session[:p2_choice].downcase)
    end
    erb(:result)
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
