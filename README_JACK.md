
                    Welcome user                Request/response from server
LocalHost 4567  --> ask user for their name --> load new page
                    Wish them luck              Ask the user for R/P/S
                                                    ^      |
                                                yes |      |
                                                    |      v
                                                Request/response from server
                                                load new page
                                                Tells user if won/LocalHost
                                                Play again?


The first thing that i will need to do is make a page to display a form for the user to enter their name with a submit button. Before i make this i will need to make a test (TDD) that fails. This will be a feature test.
A feature test was written for being able to enter the home page as well as to allow the user to enter their name. These are also now passing.

I then wrote a feature test to redirect the user to a 'play' page. This test is now passing.
I have also now written test to make a new instance of a new Player class which stores the name that they return, and shows it on the play page. This test is also now working.

Web_helpers file created to minimise the repetition in the code.

The user can now select a move and the saves that move and reports it back to the user.
This can move be used with logic to determine the winner/loser

There is now also a computer player that can select a random move which has been red-green'd.
