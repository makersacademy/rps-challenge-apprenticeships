def log_in
  visit '/'
  fill_in('name', with: 'John')
  click_button('Submit')
end
