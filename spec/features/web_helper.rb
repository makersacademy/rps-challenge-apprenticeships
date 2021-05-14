def fill_name_and_submit
  visit('/')
  fill_in :player_1_name, with: 'Ronald'
  click_button 'Submit'
end

def click_rock_and_go_again
  find('#rock').click
  click_button 'Play'
  click_link 'Go again?'
end