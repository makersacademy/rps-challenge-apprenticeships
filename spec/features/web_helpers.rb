def sign_in
  visit('/')
  fill_in :player_name, with: 'Wilbur'
  click_button 'Submit'
end
