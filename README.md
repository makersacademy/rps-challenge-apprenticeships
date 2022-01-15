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

![image](https://user-images.githubusercontent.com/76103162/149616308-cc267550-e4e3-4439-af0b-3ef7e6bf7f9e.png)

![image](https://user-images.githubusercontent.com/76103162/149616319-2c4c175b-696f-4bf1-9157-c05ef3225d72.png)

![image](https://user-images.githubusercontent.com/76103162/149616324-2dea52e9-463b-4812-8faa-12c7e6c10e1f.png)

## Running tests

Running RSpec in Terminal

`rspec`

## Design

Application Design is strongly leaning on https://www.youtube.com/watch?v=3ENJ_xd625s and https://getbootstrap.com/docs/5.1/examples/sign-in/

