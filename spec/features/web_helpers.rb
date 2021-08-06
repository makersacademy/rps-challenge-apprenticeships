def name_and_submit
  visit('/')
  fill_in :name, with: 'Hamid'
  click_button 'Submit'
end