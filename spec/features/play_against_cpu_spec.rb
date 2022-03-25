feature 'play against cpu' do
  scenario 'winning' do
    sign_in_and_play
    srand(1)
    click_button 'Rock'
    expect(page).to have_content 'You win!!!'
  end
end