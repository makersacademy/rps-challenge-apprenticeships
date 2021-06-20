def input_name_and_start_game
  visit '/'
    fill_in :Name_one, with: "Ehelsan"
    click_button('Submit')
end