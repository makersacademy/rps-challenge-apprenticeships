feature 'Displays winner name'do
  scenario 'it displays the name of the winner' do
    register_and_play
    click_button 'Rock'
    expect(page).to have_button('Play again')
  end
end