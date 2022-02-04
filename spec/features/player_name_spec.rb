feature 'form submit' do
  scenario 'can enter player name and it will appear on next page' do
    visit '/'
    fill_in "name", with: "Jaabir"
    click_button "submit"
    expect(page).to have_content('Jaabir')
  end
end
