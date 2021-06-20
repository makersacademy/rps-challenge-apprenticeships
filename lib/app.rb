require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'erb :index
  end

  run! if app_file == $0
end

post '/name' do
  sessio[:name] = params[:name]
  redirect '/play'
end

get '/play' do
  erb :play
end

# start the server when ruby file executed directly
run! if app_file == $0
end
