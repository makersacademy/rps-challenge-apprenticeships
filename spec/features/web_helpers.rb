def sign_in 
  visit '/'
  fill_in 'user_name', with: 'Patrick'
  click_button 'Register'
end
