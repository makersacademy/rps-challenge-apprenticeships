feature 'can choose option' do
  
  context 'has options' do
    scenario '#rock #paper #scissors' do
      fill_name_and_submit
      expect(page).to have_content 'Rock'
      expect(page).to have_content 'Paper'
      expect(page).to have_content 'Scissors'
    end
  end

  scenario '#paper' do
    fill_name_and_submit
    find('#paper').click
    click_button 'Play'
    expect(page).to have_content 'You chose: paper'
  end

  scenario '#scissors' do
    fill_name_and_submit
    find('#scissors').click
    click_button 'Play'
    expect(page).to have_content 'You chose: scissors'
  end

  scenario '#rock' do
    fill_name_and_submit
    find('#rock').click
    click_button 'Play'
    expect(page).to have_content 'You chose: rock'
  end
end
