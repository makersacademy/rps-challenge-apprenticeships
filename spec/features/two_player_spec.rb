feature 'two people are playing' do
  scenario 'two people can enter their names' do
    two_players_enter_names
    expect(page).to have_current_path("/one-choose")
  end
end
