require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    p params
    @name = params[:name]
    erb(:index)
  end

  

  run! if app_file == $0
end

