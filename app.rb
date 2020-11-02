require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

enable :sessions

  get '/' do
    erb :first
  end

  post '/names' do
    session['name'] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session['name']
    erb :play
  end

  post '/result' do
    session['Rock'] = params[:Rock]
    session['Paper'] = params[:Paper]
    session['Scissors'] = params[:Scissors]
    # @name
    @paper = session['Rock']
    @rock = session['Paper']
    @scissors = session['Paper']
    erb :result
  end



  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
