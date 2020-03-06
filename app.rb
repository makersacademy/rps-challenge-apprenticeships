require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    $player_name = params[:player_name]
    #@computer = params[:computer]
    erb :play
  end

  get '/outcome' do
    @player_name = $player_name
    # @computer.guess
    erb  :outcome
  end

   run! if app_file == $0
end
