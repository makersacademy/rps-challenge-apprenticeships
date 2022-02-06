require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do 
    # "button linking to players page to go here"
    '<form method="get" action="/playersnames">
      <button type="submit"> ENTER </button>
    </form>'
    
  end

  get '/playersnames' do
    erb :index
  end

  post '/players' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do 
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:new)
    

  end

  get '/pick-weapon' do
    erb(:weaponschoice)
  end

  post '/rock' do 
    erb(:rock)
  end

  post '/paper' do 
    erb(:paper)
  end


  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
