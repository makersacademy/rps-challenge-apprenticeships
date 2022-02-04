Rock Paper Scissors

To write a rock paper scissors game in sinatra, I will be using knowledge of ruby and html that has been built up over the past few weeks, using a basic request response system:


Client                Request           Server
Martketeer's ----Rock/Paper/Scissors---- RPS
Browser                                   |
    |                                     |
    |                                     |
    |                                     |
Win or Lose____________Server__________Response
 Response               RPS          Random Rock/
                                    Paper/Scissors
                                      
The client will input a choice form a form, requested to the server.

The server will pick a random response from an array and then calaculate the winner.

It will then respond that back to the Client's browser.