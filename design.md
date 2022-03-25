# USER STORIES

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

# PAGES

```ruby
get '/' do
  # markeeter can enter their name via a form using post method
  # form takes them to another page '/name'
  # erb :index
end

post '/name' do
  # name is registered as a session
  # redirect marketeer to '/welcome' where the name is displayed
  # redirect '/welcome'
end

get '/welcome' do
  # create an instance variable of the name
  # 'Welcome #{name}' is displayed
  # Another form where markeeter can decide to play rock, paper or scissors using post method
  # form action takes user to '/play-game' 
  # erb :play
end

post '/play-game' do
  # stores result as an instance variable
  # redirects user to '/result'
  # redirect '/result'
end

get '/result' do
  # display what the user selected
  # erb :game_result
end


```