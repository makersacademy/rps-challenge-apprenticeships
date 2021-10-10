# RPS Challenge

## How to Use

- Clone this repo and run ``bundle`` to install Gems
- Run ``ruby app.rb`` and visit the local host address on your browser

---

## Task

__User stories__

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

__Functionality__

- [x] the marketeer should be able to enter their name before the game
- [x] the marketeer will be presented the choices (rock, paper and scissors)
- [x] the marketeer can choose one option
- [x] the game will choose a random option
- [x] a winner will be declared

---

## My process

__Diagram__

![RPS Diagram](rps-diagram.png)

__Blockers__
- I wasn't able to write a test for declaring a winner on /outcome as I wasn't sure how to implement doubles with Capybara 