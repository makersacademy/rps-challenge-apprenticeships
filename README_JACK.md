
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
