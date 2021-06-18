feature 'Choosing option' do
  scenario 'choosing rock, paper or scissors' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'Emily chose Rock'
  end
end