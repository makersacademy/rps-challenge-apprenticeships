feature 'Page has buttons to click' do
  scenario 'page has 3 buttons' do
    register_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
