def register_name_and_submit
  visit('/')
  fill_in :player_name, with: "Zineb"
  click_button 'Submit'
end
