def sign_in_and_submit
  visit '/'
  fill_in :player_name, with: 'Meg'
  click_button 'Submit'
end
