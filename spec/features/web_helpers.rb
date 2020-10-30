# single player setup
def enter_name
  visit("/")
  fill_in('name', with: 'Bob')
  click_button('Submit')
end

# two player setup
def enter_names
  visit("/")
  click_button('Play 2 Player')
  fill_in('player1', with: 'Bob')
  fill_in('player2', with: 'Bill')
  click_button('Submit')
end

# two player helper methods
def drawn_round
  click_button('Rock')
  click_button('Rock')
end

def player1_wins_round
  click_button('Rock')
  click_button('Scissors')
end

def player2_wins_round
  click_button('Rock')
  click_button('Paper')
end

def player1_wins_match
  3.times { player1_wins_round }
end

def player2_wins_match
  3.times { player2_wins_round }
end
