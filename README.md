# Rock Paper Scissors

## Motivation
This is the third individual challenge set by Makers Bootcamp for the module of Web. I worked on this task on my own using resources from the course, the Ruby, Capybara, Sinatra and Rspec documentation and my own notes.

## The Task
This is a game of Rock Paper Scissors that can be played from the browser. The user visits the homepage, enters their name and is then taken to a page where they can choose a move (rock, paper or scissors). The user can see their chosen move and click OK to confirm. The opponent in this game is the computer which randomly chooses its move. The user is then taken to a page where the results (win, lose or draw) are displayed. I fulfiled the following user stories:

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

## Edge cases
• Protect against invalid moves by using a drop-down select form for the user to choose their move.

## Approach to solving the challenge
I solved this challenge using TDD, as well as the BDD cycle as guidance.

## Technology used
• Ruby •Capybara •Sinatra •Rspec

## How to play
$ git clone this repo
$ cd rps-challenge-apprenticeships
$ bundle install
$ rackup

## Progress
• I implemented both user stories.
• The tests passed.
• Rubocop tests did not bring up any offences.
• Test coverage of 100%.

## Additional information
Please look at RPS sequence diagram for more information on how the server interacts with the browser in this game.