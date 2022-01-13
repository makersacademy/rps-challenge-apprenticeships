feature 'Users picks a move' do
  scenario 'User selects from rock, paper, scissors'do
  register_and_play
  click_button 'Rock'
  end
end