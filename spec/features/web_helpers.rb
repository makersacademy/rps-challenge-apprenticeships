def sign_in
  visit('/')
  fill_in :player1, with: 'Phoebe'
  fill_in :player2, with: 'Ross'
  click_button 'Go!'
end

def draw
  select('paper', :from => 'choice1')
  select('paper', :from => 'choice2')
  click_button 'who wins?'
end

def winner_1
  select('rock', :from => 'choice1')
  select('scissors', :from => 'choice2')
  click_button 'who wins?'
end

def winner_2
  select('paper', :from => 'choice1')
  select('scissors', :from => 'choice2')
  click_button 'who wins?'
end