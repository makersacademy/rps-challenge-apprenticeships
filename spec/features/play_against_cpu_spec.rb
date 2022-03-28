feature 'play against cpu' do
  scenario 'winning' do
    sign_in_and_play
    srand(123)
    click_button 'Rock'
    expect(page).to have_content 'Bob wins!!!'
  end

  scenario 'losing' do
    sign_in_and_play
    srand(123)
    click_button 'Paper'
    expect(page).to have_content 'Steve, the RPS master, wins!!!'
  end
end