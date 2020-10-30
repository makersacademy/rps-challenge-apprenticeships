feature 'Player move' do
  scenario 'Player first move' do
    register_and_play
    click_button "Scissors"
    expect(page).to have_content "You chose Scissors"
  end
end
