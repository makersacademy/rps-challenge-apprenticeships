def sign_in_and_play
  visit "/"
  fill_in :player, with: "Sasha"
  click_button "play"
end

def choose_radio(move = "scissors")
  sign_in_and_play
  choose move
  click_button 'choose'
end
