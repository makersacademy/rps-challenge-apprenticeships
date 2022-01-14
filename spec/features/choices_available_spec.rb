feature "Screen after Name entry" do
  scenario "game content available" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    expect(page).to have_content "He-Man vs Superman"
    expect(page).to have_content "Please choose an Option Player 1 &nbsp&nbsp He-Man"
    expect(page).to have_content "ROCK"
    expect(page).to have_content "PAPER"
    expect(page).to have_content "SCISSOR"
  end
end
