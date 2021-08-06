require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end
  
  get '/' do
    erb(:view1)
  end

  get '/game' do
  p "from /game name param #{params}"
  @name = params[:user_name]
    erb(:view2)
  end

  get '/results' do
  p "from /results move param #{params}" 
  @move = params[:move]
  #user name to come from person class
  #winner to be provided by game class
  erb(:view3)
  end

  run! if app_file == $0
end
