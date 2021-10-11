COMPLETED STEPS:

Setup code, bundle install
Rspec, update Spec Helper

Look for folders and empty files
spec folder, features, also app.rb already there

```
USER STORY 1:
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

Completed feature tests for landing page, form for player name.
Next page displays the player's name.

```
“the marketeer will be presented the choices (rock, paper and scissors)”
```

Added new erb view files for move_rock, move_paper and move_scissors
Added jpeg of rock, paper, scissors


NEED TO DO:
Randomise the choices of rock, paper, scissors for the computer.
Logic that states which combination results in a win or loss.

Make a diagram of the way the app sends requests and responses.

GET requests
POST requests

NOTES FOR DIAGRAM:
THINKING ABOUT THE GET / POST/ REQUEST /RESPONSE routes

Try entering info into the browser. player_name does not appear in the query URL this time. Which is correct if using the session data method.

::1 - - [08/Oct/2021:12:50:14 +0100] "GET / HTTP/1.1" 200 221 0.0059
{"player_name"=>"Susan"}
::1 - - [08/Oct/2021:12:50:24 +0100] "POST /name HTTP/1.1" 303 - 0.0017
::1 - - [08/Oct/2021:12:50:24 +0100] "GET /play HTTP/1.1" 200 12 0.0021
::1 - - [08/Oct/2021:12:50:35 +0100] "GET / HTTP/1.1" 200 221 0.0019
{"player_name"=>"Billy"}
::1 - - [08/Oct/2021:12:50:41 +0100] "POST /name HTTP/1.1" 303 - 0.0015
::1 - - [08/Oct/2021:12:50:41 +0100] "GET /play HTTP/1.1" 200 12 0.0023

So, a GET request called for / route  HTTP/1.1 (gets HTML data for the page, as listed in index.erb)
Form has an action that goes to the name route, with the method post. This happens when the submit action is taken, by pressing the button? 
Hash player_name Susan, when THE BUTTON IS CLICKED (after info entered by the player in the text box)
POST request to the /name route 
Go the app.rb for the post ‘/name’ route
Put the params into session data. Redirect to the ‘/play’ route
This is a get route.
Then a GET request to the /play route
Where player_name gets set with the session data

Which part is the client? Browser?
Which part is the server? Localhost 9292?
