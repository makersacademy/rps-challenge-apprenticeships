def sign_in_play
  visit '/'
    fill_in :player_1_name, with: "Luke"
    click_button "Submit"
end