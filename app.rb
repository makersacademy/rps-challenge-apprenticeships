require 'sinatra/base'
require 'sinatra/reloader'
require './rps'
require './messenger'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  # configure :development do
  #   register Sinatra::Reloader
  # end

  # get '/test' do
  #   'test page'
  # end

 @outcome

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['name_1'] = params[:player1_name]
    redirect to '/play'
  end
  
  get '/play' do
    @name1 = session['name_1']
    session['name_1']
    erb(:play)
  end

  post '/show_results' do
    p "app.rb params[:choice]"
    p params[:choice]
    @outcome = RPS.new.play(params[:choice])
    # p session['name_1']
    @message = Messenger.new.message(session['name_1'],@outcome)
    erb(:result)
  end

  run! if app_file == $0
end
