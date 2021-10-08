require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  set :views, './lib/views'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/game' do
    @game_id = session['game_id']
    @player = session['player']
    
    @player2 = "waiting"
    erb :game
  end

  post '/start_game' do
    session['game_id'] = rand(1000..9999)
    session['player'] = params[:username]
    redirect('/game')
  end


  run! if app_file == $0
end
