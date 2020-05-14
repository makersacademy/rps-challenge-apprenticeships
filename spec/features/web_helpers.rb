def enter_name_submit
  visit ('/')
  fill_in :name, with: 'Professor X'
  click_button 'Submit'
end
