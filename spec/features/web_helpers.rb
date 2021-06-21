def sign_in_and_play
  visit("/")
  fill_in("player1", with: "Bruno")
  #   fill_in("player2", with: "Pitbull")
  click_button("submit")
end
