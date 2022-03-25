require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/choices' do
    @name = params[:name]
    erb(:select)

  end

  run! if app_file == $0
end
