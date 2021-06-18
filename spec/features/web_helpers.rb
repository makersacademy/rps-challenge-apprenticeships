def fill_in_name
  visit '/'
  fill_in 'player1', with: 'Mike'
  click_button "Let's get started!"
end
