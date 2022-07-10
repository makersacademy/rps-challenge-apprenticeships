require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/start' do
    erb :name_form
  end

  post '/yourname' do
    p params
    @name = params[:name]
    erb :index
  end

  run! if app_file == $0

end

