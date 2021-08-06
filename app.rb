require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/choice' do
    @name1 = params[:player_1_name]
    erb :choice
  end

  post '/result' do
    @player_1_choice = params[:player_1_chose]
    erb :outcome
  end

  run! if app_file == $0
end
