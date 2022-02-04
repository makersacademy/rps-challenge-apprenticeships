require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/' do
    @name = params[:name]
    erb :welcome
  end

  get '/players' do
    @name = params[:name]
    erb :start
  end

  run! if app_file == $0
end
