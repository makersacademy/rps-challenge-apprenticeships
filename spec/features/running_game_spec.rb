feature 'game page' do
  scenario 'user loses' do
    user_starts_game
    select "Rock", from: "choice"
    click_button "Go!"

    expect(page).to have_content "You entered: Rock"
    expect(page).to have_content "Computer entered: Paper"
    expect(page).to have_content "Computer wins!"
  end
end
