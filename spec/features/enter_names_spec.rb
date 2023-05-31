feature "Enter Names" do
  scenario "adds and shows names of Players" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    expect(page).to have_content "He-Man vs Superman"
  end
end
