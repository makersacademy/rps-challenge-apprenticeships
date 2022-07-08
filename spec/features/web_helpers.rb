def enter_name
  visit '/'
  fill_in 'player_name', with: 'Ollie'
  click_button 'Submit'
end
