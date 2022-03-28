feature 'choice_selector' do
  scenario 'choices are displayed' do
    enter_name_and_play
    click_button 'Start'
    expect(page).to have_content "Rock, Paper, or Scissors?\nMake your choice."
  end

  scenario 'player can select rock' do
    enter_name_and_play
    click_button 'Start'
    choose 'Rock', allow_label_click: true
    click_button 'Submit'
    expect(page).to have_content "Luci picked Rock!"
  end

  scenario 'player can select scissors' do
    enter_name_and_play
    click_button 'Start'
    choose 'Scissors', allow_label_click: true
    click_button 'Submit'
    expect(page).to have_content "Luci picked Scissors!"
  end

  scenario 'player can select paper' do
    enter_name_and_play
    click_button 'Start'
    choose 'Paper', allow_label_click: true
    click_button 'Submit'
    expect(page).to have_content "Luci picked Paper!"
  end
end
