def submit_name
  visit '/'
  fill_in "name", with: 'Bob'
  click_button 'Submit'
end
