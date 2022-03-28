require 'sinatra/base'
class App < Sinatra::Base
  get '/' do
    erb :player_reg 
  end

  post '/player_reg' do
    p params
    @player_name = params[:player_name]
    erb:vspage
  end

post '/choice' do
    
end

  run! if app_file == $0
end
x