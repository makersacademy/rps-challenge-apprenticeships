# RPS Challenge

Implementation of a web-application of Rock-Paper-Scissors. Can be run as Single Player (against Computer) or in Multiplayer against another player.

Basic rules:
- Rock beats Scissors
- Paper beats Rock
- Scissors beat Paper

## Getting started

Clone the repository to your local maschine and install GEMs with bundle from top level folder in Terminal

`git clone https://github.com/michael-zwickler/takeaway-challenge`

`bundle install`

## Usage

Run with rackup from your Terminal and open http://127.0.0.1:9292 in your browser. Use CTRL + C to kill the local server

`rackup` 

or define the port you want to run it on by setting it with flag -p http://127.0.0.1:1337/

`rackup -p 1337` 

or run it vie ruby command from Terminal http://127.0.0.1:4567

`ruby app.rb` 

## Running tests

Running RSpec in Terminal

`rspec`

## Design

Application Design is strongly leaning on https://www.youtube.com/watch?v=3ENJ_xd625s and https://getbootstrap.com/docs/5.1/examples/sign-in/
