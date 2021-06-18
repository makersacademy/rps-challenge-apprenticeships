feature 'allows marketeer to register name before playing an online game' do
  scenario 'input name of Player' do
    visit '/'
    fill_in :Name_one, with: "Ehelsan"
    click_button('Submit')
    expect(page).to have_content "Player One: Ehelsan"
  end
end