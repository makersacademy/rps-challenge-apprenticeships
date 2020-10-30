feature 'Player move' do
  scenario 'Player first move' do
    register_and_play
    click_button "Paper"
    expect(page).to have_content "You chose Paper"
  end
end
