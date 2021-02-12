feature 'choose move' do
  scenario 'user chooses rock, paper or scissors' do
    fill_in_name
    save_and_open_page
    fill_in :move, with: "rock"
    click_button "Play"
    expect(page).to have_content "rock"
  end
end