feature 'player1' do
  scenario 'player enters name' do
    sign_in
    expect(page).to have_content 'Alex'
  end
end
