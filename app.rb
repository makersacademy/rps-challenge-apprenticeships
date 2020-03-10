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
 session[:weapon] = params[:weapon]
  weapon = Outcome.new
 #$computer_choice
  #$weapon = Outcome.new(params[:weapon])
  @results = weapon.results(session[:weapon])
  @computer_choice = weapon.computer_choice

erb :outcome_final
end

   run! if app_file == $0
end
