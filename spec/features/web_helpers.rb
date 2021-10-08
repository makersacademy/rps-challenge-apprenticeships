def home_page_register
  visit '/'
  fill_in 'name', with: 'Troy'
  click_button 'submit'
end