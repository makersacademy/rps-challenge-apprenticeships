## Rock Paper Scissors Webapp

# Project Description

This project was made for the Makers Academy Week 5 Friday challenge. The task was to provide a Rock, Paper, Scissors game so users can play on the web. We were given the following users stories:
```
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  As a marketeer
  So that I can enjoy myself away from daily grind
  I would like to be able to play rock/paper/scissors
  ```

And regarding the functionality
* The marketeers should be able to enter their name before the game
* The marketeers will be presented with the choices rock, paper or scissors
* The marketeers can choose one option
* The computer will choose a random option
* A Winner will be declared

# Technical Implementation

I used a test-driven development approach to create the simple web app using the Sinatra MVC framework.

I started with the View and sketched out a simple storyboard of how my app should look and behave. I then diagrammed my file structure and implemented it. I checked my connections with localhost and ran a simple test with Capybara to ensure I had set everything up correctly.

I then worked through the user stories implementing my features first:
* The user wants to register their name 

I wrote a feature test to check for a name field on the main page then added this to my app.rb and wrote the HTML for the page, using Bootstrap for the bulk of the CSS to save time. I then worked out my routes and tested to see if my play button would work to take me to another page where the player would enter their choice, satisfying the second user story.

After I had my routes working I then moved to the logic of the app. I diagrammed my intended plan to decide what methods and classes I would use. I decided to test that my basic Model would take an input from the controller and return an output (the outcome of the game). After writing this failing test in rspec I let my errors drive my program until I had a working model. I then used Rubocop to drive my refactoring of the files.

I have a basic working model now at this point.

COVERAGE:  98.55% -- 68/69 lines in 6 files

+----------+-------------+-------+--------+---------+
| coverage | file        | lines | missed | missing |
+----------+-------------+-------+--------+---------+
|  93.75%  | lib/game.rb | 16    | 1      | 23      |
+----------+-------------+-------+--------+---------+
5 file(s) with 100% coverage not shown


# Features still to implement

I did not fully finish the challenge in the time given so I have improvements and enhancements I would like to make:
- [] I realised that the game would still start if the submit button was pressed without entering a name. I will need to find out how to implement and error if this field is blank

- [] I would like the 'Rock', 'Paper', and 'Scissors' images on the play page to act as buttons to make choice instead of having a text input field to enter choice

- [] I did not progress the stretch goals so would like to implement an option for a two player game, extracting the players to a new class

- [] I would like to refactor the code in the model to remove the bulky if/else statement if possible

- [] I would like to extract a module to hold the variables for the outcomes and weapons

- [] Keep the README updated with changes and include more examples of my planning and implementation


# How to run the app

```
  $ git clone https://github.com/benfielding74/rps-challenge-apprenticeships.git
  $ cd rps-challenge-apprenticeships
  $ bundle
  $ ruby app.rb
  $ visit 'localhost:4567' in browser
  ```

# Technologies used

Ruby, Sinatra, HTML, CSS with Bootstrap





