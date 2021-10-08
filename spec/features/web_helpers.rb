def register
  visit('/')
  fill_in 'player_name', with: 'John'
  click_button 'Register'
end
