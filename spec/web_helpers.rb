def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Bob Bohadana'
  click_button 'Play!'
end
