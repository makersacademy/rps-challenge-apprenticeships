def sign_in_and_play
  visit('/')
    fill_in :user_name, with: 'Bella'
    click_button 'Submit'
end