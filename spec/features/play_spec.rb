feature 'play' do
  scenario 'select rock' do
    register_and_play
    
    choose "Rock"
    click_button 'Play'
    expect(page).to have_content "Mark selected: Rock"
  end

  scenario 'select paper' do
    register_and_play
    
    choose "Paper"
    click_button 'Play'
    expect(page).to have_content "Mark selected: Paper"
  end

  scenario 'select scissors' do
    register_and_play
    
    choose "Scissors"
    click_button 'Play'
    expect(page).to have_content "Mark selected: Scissors"
  end

end
