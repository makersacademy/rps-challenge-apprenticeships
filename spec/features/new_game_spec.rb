feature 'user can play game' do
  scenario 'user can choose rock, paper or scissors' do
    sign_in_and_play
    choose 'game', option: 'Rock'
    click_button 'Play!'
    expect(page).to have_content "user chose: Rock"
  end
end
