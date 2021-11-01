feature 'it displays result' do
  scenario 'Result is displayer' do
    sign_in_and_play
    begin_game
    expect(page).to have_content "The result is:"
  end
end
