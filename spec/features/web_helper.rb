def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Hodan'
  click_button 'START!'
end
