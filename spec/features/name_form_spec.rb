feature 'allows marketeer to register name before playing an online game' do
  scenario 'input name of Player' do
    input_name_and_start_game
    expect(page).to have_content "Hi, Ehelsan! Rock, Paper, or Scissors?"
  end
end