require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/welcome" do
    @player_name = params[:player_name]
    "Welcome, #{@player_name}!"
  end

  run! if app_file == $0
end
