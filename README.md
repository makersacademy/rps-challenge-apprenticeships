# Rock, Paper, Scissors!

A project built following a TDD approach, using Sinatra and Capybara/RSpec for test-driving, as part of the `individual challenges` for the Makers Academy coding course: https://github.com/makersacademy/rps-challenge-apprenticeships.

This is a simple webapp that lets the user play a game of rock, paper, scissors, in either single player, two player or an extended mode.

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules!

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## _Special_ Rules

Source: https://bigbangtheory.fandom.com/wiki/Rock,_Paper,_Scissors,_Lizard,_Spock

- Scissors cuts Paper
- Paper covers Rock
- Rock crushes Lizard
- Lizard poisons Spock
- Spock smashes Scissors
- Scissors decapitates Lizard
- Lizard eats Paper
- Paper disproves Spock
- Spock vaporizes Rock
- Rock crushes Scissors

## Usage

See images in `/public/images/single_player` for how a simple, single player game runs.

## Set up

1. Clone repo
2. Run `bundle install`

## To run

1. Run `rackup -p 4567`
2. Access the website at http://localhost:4567

## Routing
### Single player game

index > single_player_signup > single_player_game > result

### Two player game

index > two_player_signup > player1_choice > player2_choice > result2

### Extended game

Same as single player route.

## Client-Server diagram

![client-server diagram for RPS app](https://github.com/lewiscj97/rps-challenge-apprenticeships/blob/main/public/server.png)

## Improvement Points

- Main point would be to find a way to not require multiple views for getting the different players choices in a two player game - would be better if the players choices could be done within the `/choices` view
- Tried different ways of doing this, but it was challenging as I wanted the choices to be made on separate screens, so the users could pass the device running the game after they have selected their option. I didn't want both players to make their choices on the same page, otherwise each player would know the other's move! Not sure what would be the best way to do this
- High cyclometric complexity for game logic (especially the extended game logic) in `GameLogic` module - would be better to reduce this by splitting out into smaller methods
- Use of `session` within Sinatra is generally unfavourable, although I have managed to remove any instances of the global variable by configuring the `Game` and `TwoPlayerGame` classes to be Singletons (only one instance can be created at a time, and this is accessed using e.g. `Game.instance`)
- Conflicted as to whether it would be better to have a Game _and_ a TwoPlayerGame class, or whether this logic should have been kept inside a single class for both game modes
