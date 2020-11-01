feature 'Page has buttons to click' do
  before do
    register_and_play
  end

  scenario 'page has 3 buttons' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
