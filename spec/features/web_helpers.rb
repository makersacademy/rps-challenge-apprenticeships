def register_and_play
  visit('/')
  fill_in :name, with: 'Dave'
  click_button 'Submit'
end