def sign_in_and_play
  visit "/"
  fill_in "name", with: "Tina"
  click_button "Let's play!"
end

def make_player_choice
  visit "/play"
  select "Scissors", from: "choice"
  click_button "Submit"
end