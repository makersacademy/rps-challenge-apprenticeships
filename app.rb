require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

get '/' do
erb :index
end

post '/name' do
  @name = params[:name]
  erb :play
end

post '/outcome' do
  @weapon = params[:weapon]
  #erb :play
  erb :outcome
end

   run! if app_file == $0
end
