require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/start' do
    $name = params[:name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/attack' do
    # something that works out who wins
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
