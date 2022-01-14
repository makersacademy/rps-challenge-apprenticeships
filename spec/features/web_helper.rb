def enter_name_and_start
  visit '/'
  fill_in "Your Name", with: "Megan"
  click_button "Play"
end
