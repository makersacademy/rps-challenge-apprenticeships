require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    #pass the name the user has submitted to the instance variable
    @player_name = params[:player_name]
    response = erb :choose_weapon
    response
  end
   run! if app_file == $0
end
