# Rock Paper Scissors

## Diagram at ./rps-diagram.svg

A simple web app to play rock, paper, scissors.

## ./app.rb

2 gets ( homepage and gamepage ) 

2 posts ( submissions for respective pages )

## ./lib

### Player

The player class takes a name at constructions, and sets it to the instance name instance variable, with a getter (attr_reader).

The game class has a hash and array to use in the logic.

:cmpchoice and :userchoice are getters for simple interpolation in ERB files.

### Game.play

sets the instance variable '@cmpchoice' to either "Rock", "Paper", or "Scissors".

### Game.run

modular RPS taken from 

[@renegadecoder](https://therenegadecoder.com/code/rock-paper-scissors-using-modular-arithmetic/)

and

[@betterprogramming](https://betterprogramming.pub/7-ways-to-code-rock-paper-scissors-in-javascript-4189a5e7e535)

takes an argument which should be "R/P/S". sets the argument to instance variable '@userchoice'.

cmp and user variables find the index of the choices, within the 'RPS_ARRAY'.

if the result is 0, its a tie; if the result is 1 the user wins; if 2, the computer wins.
