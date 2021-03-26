def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Rahat'
  click_button 'Enter'
end