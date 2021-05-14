feature 'Enter names on homepage' do
  scenario 'player can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Jim'
  end
end