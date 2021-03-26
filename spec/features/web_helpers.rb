def register_and_play
  visit("/")
  fill_in :player_one_name, with: "Mark"
  click_button 'Register'
end
