require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/test' do
    'test page '
  end
  get '/' do
    erb :index
  end
  post '/action_page' do
     p params
  #   session[:player] = Player.new(params[:player_name])
  #   redirect '/select-action'
  end

  # get '/select-action' do
  #   @player_name = session[:player].name
  #   erb :select_action
  # end

  # post '/record-action' do
  #   session[:player].choose_action(params[:action])
  #   redirect '/display-action'
  # end

  # get '/display-action' do
  #   @player_action = session[:player].action
  #   erb :display_action
  # end
  

    run! if app_file == $0
end
