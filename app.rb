require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :name_form
  end

  get '/game' do
    @name = params[:name]
    erb 'The Game' 
  end

  run! if app_file == $0
end
