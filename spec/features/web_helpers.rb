def enter_name
  visit '/'
  fill_in :player_1_name, with: "Jim"
end
