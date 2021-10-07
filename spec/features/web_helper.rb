def user_starts_game
  visit '/'
  fill_in "name", with: "Foo"
  click_button "Submit"
end