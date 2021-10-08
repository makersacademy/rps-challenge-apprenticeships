# Rock, Paper, Scissors Challenge

## Task
The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web with the following user stories:
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Download and Run instructions
```
git clone https://github.com/michelle-watkins/rps-challenge-apprenticeships.git
bundle 
rackup
```
Open localhost in your browser with the specified port (found in your terminal message once you've ran `rackup`).

## My Folder Structure
```
├── lib
│   └── This is where logic files will be stored (classes and methods).
├── spec
│   ├── This is where unit tests will be stored.
│   └── features
│       └── This is where feature tests will be stored.
├── views
│   └── This is where the text/html for pages will be stored.
└── app.rb 
```

## To-Do



## Done
* Write a feature test for entering a player name
* Create a `'/'` route in `app.rb` that renders `index.erb`
* Create views directory with an `index.erb` file
* Create form in `index.erb` that points to `/name` and uses a `post` request
* Add `post '/name'` route to app.rb
* Create `play.erb` to display the user's name
* Add `save_and_open_page` helper to feature test so page will open when running `rspec`
* Add title, instruction and label to `index.erb`