feature 'form submit' do
  scenario 'can enter player name and it will appear on next page' do
    visit '/'
    fill_in "name1", with: "Jaabir"
    fill_in "name2", with: "Yusuf"
    click_button "submit"
    expect(page).to have_content('Jaabir')
    click_button "rock"
    expect(page).to have_content("Yusuf")
  end
end
