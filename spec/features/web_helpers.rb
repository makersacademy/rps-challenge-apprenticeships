def sign_in
  visit('/')
  fill_in :name, with: 'Harry'
  click_button 'Submit'
end
