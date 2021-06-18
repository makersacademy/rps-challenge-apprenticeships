feature 'choose rock, paper, or scissors' do
  # before do
  #   visit ('/')
  #   fill_in :name_one, with: 'Ehelsan'
  #   click_button 'Submit'
  # end

  scenario 'be able to see rps choices/buttons' do
    visit ('/')
    fill_in :Name_one, with: 'Ehelsan'
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end