feature 'Users picks a move' do
  scenario 'User selects from rock, paper, scissors'do
  visit ('/')
  fill_in :PlayerName, with: 'Justine'
  click_button "Start Game!"
  click_button 'Rock'
  end
end