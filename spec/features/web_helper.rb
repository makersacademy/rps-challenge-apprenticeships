def submit_name
  visit('/')
  fill_in :player, with: 'Heather'
    click_button 'Submit'
end