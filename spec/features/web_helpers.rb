def sign_in_and_play
  visit('/')
  fill_in :login_box, with: 'Charlotte'
  click_button 'Submit'
end
