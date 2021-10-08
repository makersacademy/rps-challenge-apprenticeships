# RPS Challenge
```
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)

    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
```

 ## Introduction
-----
This program is a webapp that uses the Sinatra framework to replicate the Rock, Paper, Scissors game. The primary programming language is Ruby, however HTML has been used to render the text on a browser and the Bootstrap Library has been used to provide some simple styling. Tests have been written using RSpec, with feature tests written using Capybara. This webapp satisfies the following user stoties:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Installation

After forking and cloning this repo, you will need to run gem install bundler. After installation use the bundle command.
```bash
gem install bundler
```

```bash
bundle
```

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Usage
A user can play this game by entering their name on the home screen and pressing the "Let's play!" button. They will then be taken to another page and presented with a select box containing 3 options. A randomly generated option will be selected by the computer, so that when the user makes their choice and clicks the "Submit" button, they will be taken to a page which contains confirmation of their choice, confirmation of the computer's choice, and the result i.e. whether they or the computer has won, or whether the outcome is a draw. The app can be used by visiting: https://makers-fb-rps.herokuapp.com/