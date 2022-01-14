def sign_in 
  visit('/')
  fill_in :username , with:"Adam"
  click_button 'Submit'
end 