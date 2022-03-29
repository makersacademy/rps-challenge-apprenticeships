feature 'enter name' do

  scenario 'player can enter their name and see it on the screen' do
    sign_in_as_quincy
    expect(page).to have_content('Welcome Quincy!')
  end

  scenario 'another player enters their name' do
    visit '/'
    fill_in(:name, with: 'Nick')
    click_button('Play')
    expect(page).to have_content('Welcome Nick!')
  end

end