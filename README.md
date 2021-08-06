# RPS Challenge

## Notes

Working over one day plus a little refining over the weekend, for this task I created a simple-looking ruby web app that allows a user to play a game of Rock Paper Scissors either vs a computer opponent or with another user.

I did not have the time nor the comfort of knowledge to style the site nicely, though I did set up my tree structure to support additional CSS, and implemented bootstrap for a baseline improvement.

## How to run

1. Clone repo, `cd` to directory and run `bundle install`
2. Run the app with `ruby app.rb`

## MVC

### Diagram

[Direct link here](https://github.com/Aroax/rps-challenge-apprenticeships/blob/master/docs/RPS_MVC_diagram.jpg)

![MVC diagram](https://github.com/Aroax/rps-challenge-apprenticeships/blob/master/docs/RPS_MVC_diagram.jpg)

### Mermaid Code

```
sequenceDiagram
    User->>+Browser: type `http://localhost:4567/`
    Browser->>+Controller: GET '/'
    Controller->>+View: render :index
    View->>-Controller: HTML
    Controller->>-Browser: 200 OK, body HTML
    Browser->>-User: see home page

    User->>+Browser: select `mode` from 'player select' and click `Start`
        Browser->>+Controller: POST /mode-select formdata
        Controller->>+Model: store :number_of_players in session[]
        Model->>-Controller: send session[:number_of_players]
        Controller->>Browser: IF session[:number_of_players] == 1, 303 Redirect, `/one-player'
            Browser->>Controller: GET /one-player
            Controller->>+View: render :singleplayermenu
            View->>-Controller: HTML
            Controller->>Browser: 200 OK, body HTML
   Browser->>User: see 1 player name form
        Controller->>Browser: IF session[:number_of_players] == 2, 303 Redirect, `/two-player`
            Browser->>Controller: GET /two-player
            Controller->>+View: render :multiplayermenu
            View->>-Controller: HTML
            Controller->>-Browser: 200 OK, body HTML
    Browser->>-User: see 2 player name form

    User->>+Browser: fill in name(s) and press 'Start'
        Browser->>+Controller: POST '/name-submit', formdata
        Controller->>+Model: store session[:game]
        Controller->>Browser: 303 Redirect, '/welcome'
        Browser->>Controller: GET '/welcome'
        Model->>-Controller: unpack session[:game] to @game
        Controller->>View: render :welcome_screen
        View->>Controller: HTML
        Controller->>-Browser: 200 OK, body HTML + @game.player_1.name, @game.player_2.name
    Browser->>-User: see name(s) on welcome screen

    User->>+Browser: clicks 'Begin'
        Browser->>+Controller: IF singleplayer GET '/game'
            Model->>Controller: unpack session[:game] to @game
            Controller->>+View:  render :game
            View->>-Controller: HTML
            Controller->>-Browser: 200 OK, body HTML + @game.player_1.name, @game.player_2.name
        Browser->>+Controller: IF two-player GET '/mulitplayer-game'
            Controller->>View:  render :multiplayergame
            View->>Controller: HTML, @game.player_1, @game.player_2
            Controller->>-Browser: 200 OK, body HTML + @game.player_1.name, @game.player_2.name
    Browser->>-User: sees names + rock/paper/scissors move options

    User->>+Browser: chooses move (or moves for 2 player), clicks 'Submit'
        Browser->>+Controller: POST '/moves-submit', formdata
        Model->>Controller: unpack session[:game] to @game
        Controller->>-Browser: 303 Redirect, '/results'
        Browser->>+Controller: GET '/results'
        Model->>Controller: unpack session[:game] to @game
        Controller->>-Browser: 200 OK, HTML, @game
    Browser->>-User: sees results: both player choices + victor + score tally

```


# Original Instructions

## Challenge

* Challenge time: until the end of the day
* Feel free to use google, your notes, books etc but please work on your own
* Please raise a pull request when you start this challenge, and keep pushing updates as and when you make commits throughout the day
* Please submit a _diagram_ of how the browser interacts with a server from either your battle challenge or this challenge. This can be a photo of a pen/paper picture or a computer diagram.
* There is _no expectation_ to finish all or any of the user stories, please use this time to reflect on where you feel you are with the skill and what may support your learning.
* If you get blocked, please reflect on what blocked you and any strategies you adopted that helped you make progress.

## Set up

```bash
$ bundle install
$ rspec
# You should output that includes:
# 1 example, 0 failures
```

## Task

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

As usual please start by:

* Forking this repo
* Test-driving development of your app

## Resources

* [HTML forms](https://www.w3schools.com/html/html_forms.asp)
* [Capybara cheatsheet](https://devhints.io/capybara)
* [Twitter bootstrap css library](https://getbootstrap.com/)
* [Hosting on heroku](https://heroku.com)

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_)

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.
* Commits and short and scoped

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

## Notes on test coverage

Please ensure you have the following **AT THE TOP** of your `spec/spec_helper.rb` in order to have test coverage stats generated on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
