# Rock Paper Scissors Challenge

## Task

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

_Bonus level 1: Multiplayer_

> Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

_Bonus level 2: Rock, Paper, Scissors, Spock, Lizard_

> Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_)

## Resources

- [HTML forms](https://www.w3schools.com/html/html_forms.asp)
- [Capybara cheatsheet](https://devhints.io/capybara)
- [Twitter bootstrap css library](https://getbootstrap.com/)
- [Hosting on heroku](https://heroku.com)

## Installation

- fork this repo
- clone to your own repo
- push any updates
  `bundle install`
  `rspec`

## Demo
https://user-images.githubusercontent.com/78110998/136797162-f000386c-d5f6-45e9-b107-a9c0d15dc933.mov

## Project Planning

1. Read all user stories
2. Identify objects(classes) and methods
3. Write down unit tests that fail
4. Write methods to satisfy the requirements of the unit tests above, until they all pass
5. Review code before submissions to ensure:

- Is this code presentable? Am I proud to show it off to others?
- Have I cleaned up things like whitespace, commented-out code, debugger statements from my code?
- Does the indentation look right?
- Have I conformed my code to styleguide rules (Hound will help you out here)?
- Is it clear to someone unfamiliar with my codebase what's going on?

6. Raise a pull request and commit updates

## Project Features

- [x] the marketeer should be able to enter their name before the game
- [x] the marketeer will be presented the choices (rock, paper and scissors)
- [x] the marketeer can choose one option
- [x] the game will choose a random option
- [x] a winner will be declared

## HTTP Process Modelling

![Client-Server](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/524f0c68-c049-453d-a9c2-0f780673178c/Screenshot_2021-10-09_at_21.43.47.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20211015%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211015T135418Z&X-Amz-Expires=86400&X-Amz-Signature=5f124a170a7b3cf76f6570b4427e6aa0584259d6dea7d2d8ad10d4db054c0be7&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Screenshot%25202021-10-09%2520at%252021.43.47.png%22)
