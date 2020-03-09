require 'sinatra/base'
require_relative 'lib/outcome'
#require 'outcome_final'
class RockPaperScissors < Sinatra::Base
  enable :sessions

$weapon = Outcome.new
#this does not throw up and error but
#at the moment im not sure what to do with it

get '/test' do
  'test page'
end

get '/' do
  erb :index
end

post '/name' do
  @name = params[:name]
  puts params
  erb :play
end

#do i need to get an outcome first?

#get '/outcome' do
  #end

post '/outcome' do
  #set player one move
  session[:weapon] = params[:weapon]
  #$weapon = Outcome.new(params[:weapon])

  $weapon.results

  #response = redirect('/outcome_final')
  #response
  #generate random move
  #compare moves
  #winner
  #@weapon = Outcome.new(params[:weapon])
  #when i use @weapon it says unanisalised constant
  erb :outcome_final
end

   run! if app_file == $0
end
