feature 'choose a move' do
  scenario 'at the start of a game' do
    sign_in_and_play
    expect(page).to have_content "Select a move Ken!"
  end
end
