def enter_name_and_start
  visit '/'
  select "One Player", :from => "mode"
  click_button "Load"
  fill_in "Your Name", with: "Megan"
  click_button "Play"
end

def two_players_enter_names
  visit '/'
  select "Two Player", :from => "mode"
  click_button "Load"
  fill_in :player_one_name, with: "Orla"
  fill_in :player_two_name, with: "ABT"
  click_button "Play"
end

def choose_rock
  select "Rock", :from => "choice"
  click_button "Go!"
end
