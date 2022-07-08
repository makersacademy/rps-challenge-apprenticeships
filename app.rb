require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/rockpaperscissors' do
    erb :name_form
  end

  run! if app_file == $0
end

post '/yourname' do
  @name = params[:name]
  erb :index
end