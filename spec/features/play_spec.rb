feature 'Attacking' do
  scenario 'Player 1 chooses their move' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_content 'Bob chose rock'
  end
end