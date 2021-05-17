def sign_in
  visit '/'
  fill_in :name, with: 'Reginald'
  click_button 'Submit'
end
