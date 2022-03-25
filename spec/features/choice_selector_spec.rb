feature 'choice_selector' do
  scenario 'choices are displayed' do
    enter_name_and_play
    click_button 'Start'
    expect(page).to have_content "Rock, Paper, or Scissors?\nMake your choice."
  end

  scenario 'player can select rock' do
    enter_name_and_play
    click_button 'Start'
    click_button 'Rock'
    expect(page).to have_content "Luci picked ROCK!"
  end
end
