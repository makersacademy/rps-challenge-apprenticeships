feature 'Computer chooses attack' do
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'rock'
    expect(:player_2_choice).and_return(!nil)

end

end
