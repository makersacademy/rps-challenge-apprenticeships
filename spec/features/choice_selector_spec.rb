feature 'choice_selector' do
  scenario 'allows player to select their move' do
    enter_name_and_play
    click_button 'Start'
    expect(page).to have_content "Rock, Paper, or Scissors?\nMake your choice."
  end
end
