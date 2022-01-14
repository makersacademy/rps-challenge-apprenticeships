feature 'both users make their plays' do
  scenario 'player one can choose rock' do 
    two_players_enter_names
    expect(page).to have_content "Orla"
    choose_rock
    expect(page).to have_current_path("/two-choose")
  end

  scenario 'player two can choose rock' do 
    two_players_enter_names
    choose_rock
    expect(page).to have_content "ABT"
    choose_rock
    expect(page).to have_current_path("/result")
  end
end
