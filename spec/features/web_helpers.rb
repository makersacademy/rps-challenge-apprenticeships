def sign_in
  visit('/')
  fill_in :name, with: 'Harry'
  click_button 'Submit'
end

def multiplayer_sign_in
  visit('/')
  fill_in :player_1_name, with: 'Harry'
  fill_in :player_2_name, with: 'Eloise'
  click_button 'Play!'
end
