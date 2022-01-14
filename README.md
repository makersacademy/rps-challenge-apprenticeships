# RPS Challenge

## Task

For the Friday challenge of week 5: The Web, we have been given the ask of creating a simple web-based rock-paper-scissors game. 

## Approach

I started with the first user story and by writing a feature test around the expectations of the start page - that it would allow the user to enter their name and have a start button. This was relatively simple. The second user story was more complex, but I started with the feature test of the user selecting a certain option and receiving a message of their attack, the computers attack and then who won. By using the Red, Green, Refactor process I allowed the errors to drive my code. As this was quite a wide user story it led me to test driving a Player class, a Game class, and finally a Decide class so the computer player would randomly pick an attack. There is 100% test coverage and Rubocop is happy.

## Further Notes

* As per the Battle challange, I have used a global variable as we haven’t yet got to databases.

* There's still scope for more refacting, in particular in app.rb as there’s a bit of repetition of ‘@game = $game’ but I ran out of time.

* I used extra feature tests in play_game_spec.rb to test for different outcomes of the game (with use of srand)

* Rubocop wasn’t happy with the initial code for checking who had won, so had to take inspiration from this [link](https://codereview.stackexchange.com/questions/179782/lets-play-rock-paper-scissors-with-ruby) to make it shorter and simpler. 

* I haven't done any of the Bonus levels done; however I tried to consider the multiplayer option while I was writing the main user stories and I think it would be relatively simple to implement. Both the human player and computer player are an instance of the Player class. I made a Decide class for the computer to pick an attack, which could by skipped over with an if statement if the second player was also human etc.

## To Do
* Please submit a _diagram_ of how the browser interacts with a server from either your battle challenge or this challenge. This can be a photo of a pen/paper picture or a computer diagram.


## Task

For reference the task and user stories are included below....

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
