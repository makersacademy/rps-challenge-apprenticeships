require 'sinatra/base'
require_relative './rps'

class RockPaperScissorsApp < Sinatra::Base
  enable :sessions

  def render_page(page)
    erb page, {:layout => :layout}
  end

  get '/' do
    render_page :index
  end

  post '/play' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name] || 'Computer'
    session[:player_count] = params[:player_count].to_i
    session[:moves] = []

    @name = params[:p1_name]
    render_page :play
  end

  post '/move' do
    session[:moves] = session[:moves].push(params[:action])
    if session[:moves].length == session[:player_count]
      @p1_move = session[:moves][0]
      @p2_move = session[:moves][1] || RockPaperScissors.allowed_guesses.sample
      @p1_name = session[:p1_name]
      @p2_name = session[:p2_name]
      @result = RockPaperScissors.find_winner @p1_move, @p2_move
      render_page :results
    else
      @name = session[:p2_name]
      render_page :play
    end
  end

  run! if app_file == $0
end
