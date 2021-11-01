feature 'Page displays user and Computer choice' do
  
  scenario 'Players descision displayed' do
    sign_in_and_play
    begin_game
    expect(page).to have_content 'Rock'
  end

  scenario 'Computers descision displayed' do
    sign_in_and_play
    begin_game
    expect(page).to have_content @computerplayer
  end
end
