require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  # configure :development do
  #   register Sinatra::Reloader
  # end

  # get '/test' do
  #   'test page'
  # end
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    session['name_1'] = params[:player1_name]
    # session['name_2'] = params[:player2_name]
    redirect to '/play'
  end
  
  get '/play' do

    @name1 = session['name_1']
    # @name2 = session['name_2']
    erb(:play)
  end

  run! if app_file == $0
end
