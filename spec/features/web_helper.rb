def user_starts_game
  visit '/single_player'
  fill_in "name", with: "Foo"
  click_button "Submit"
end
