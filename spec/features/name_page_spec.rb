feature 'Entering username' do
  scenario "When I enter Jordan, the next page will include my name" do
    visit '/'
    fill_in('name', with: 'Jordan')
    click_button('Submit')
    expect(page).to have_content "Hello Jordan. Choose one of the options below to play!"
  end
end