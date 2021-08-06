Project Title - RockPaperScissors Challenge (details at end of readme file)

Requested outputs
Travis CI badge placeholder.
HTTP cycle - diagram provided in root directory

Motivation
End of week 5 test to allow calibration of current learning status and allow setting of goals in future weeks.

Build status
v0.1 Submitted first initial working rspec test for home page
v0.2 Submitted current working copy

Notes:
Impacted by the RSPEC capybara tests not working. Spent a large amount of time trying to diagnose the issue and called in coach support. The code can be tested via pry and works, but will not produce the required results in RSPEC.

Code style
Ruby, RSpec, rubocop, Hound, Sinatra, Capybara. MVC model implemented.

Screenshots
See Overview diagram (.png) for overview of the setup
See RPSlogic (.png) for approach to RockPaperScissors
See HTTP cycle for interactions between user, browser and server.

Installation
lib folder for classes game and person.rb (in progress)
view folder for views.erb files (1-3)
spec folder/features for feature tests.

Provide step by step series of examples and explanations about how to get a development env running. (to be provided)

API Reference
none

Tests 
info on full testing to be reported
expect shape of tests to be:
the marketeer should be able to enter their name before the game {from home screen /]
User sees name in lights (perhaps an image of spotlights under the name or something similar) - will add this in as last test if others passing.
the marketeer will be presented the choices (rock, paper and scissors)
the marketeer can choose one option
the game will choose a random option
a winner will be declared

Initial analyses


How to use?
can be operated via rackup and the local host website address using / for the home page to navigate through the screens.

Contribute
TBC

Credits

Thanks to my peer group team for their support, they are my rocks (Jessica, Annesa, Danyaal)

License

no known license requirements.

Thoughts on the project:
to be filled in at pull request.

# RPS Challenge

## Instructions

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
