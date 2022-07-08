require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/test' do
    'test page'
  end

  get '/' do
    erb :name_form
  end

  post '/register-name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/select-action'
  end

  get '/select-action' do
    @player_name = session[:player].name
    erb :select_action
  end

  post '/record-action' do
    session[:player].choose_action(params[:action])
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:player].name
    @player_action = session[:player].action
    @computer_action = RandomAction.new.action
    @result = Game.new.result(@player_action, @computer_action)
    erb :result
  end

  run! if app_file == $0
end
