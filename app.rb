require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page '
  end

  # get '/' do
  #   erb :index
  # end
  # post '/action_page' do
  #   @player = params["name"]
  #   erb :play
  # end

  # post '/game' do
  #   p params
  #   erb :match
  # end

    run! if app_file == $0
end
