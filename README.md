## Airport Challenge ###

This project is a sinatra web application that allows the user to play rock paper scissors against the computer. It satisfies both of the user stories mentioned below:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```
```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

#### Getting Started ####

Fork and then clone this repo using:
```
git clone [path-to-your-repo]
```

Install the necessary dependencies using:
```
bundle
```

#### Usage ####

To start running the program, run:
`rackup`

Then navigate to the following address in your browser:
```
localhost:9292
```

#### Running Tests ####

To run the tests:
```
rspec
```

#### Issues that I faced ####

I found it difficult to test that when the user clicked a particular option, e.g. 'rock', that this changed the value of their choice instance variable.
It was confirmed to be working through a passing feature test but I am not too happy with the unit test that I wrote which uses instance_variable_set to stub the value as
I am sure there is a better way of doing this!
