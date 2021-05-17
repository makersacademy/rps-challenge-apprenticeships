def register_and_play
  visit('/')
  fill_in :name, with: 'Jay'
  click_button 'Submit'
end
